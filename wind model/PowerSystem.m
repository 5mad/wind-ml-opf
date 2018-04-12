classdef PowerSystem
    %   SYSTEM39BUS Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        case_number
        model
        load
    end
    
    properties(Constant)
        load_civil = [60 60 60 60 60 90 90 90 90 90 80 80 80 ...
                        80 100 100 100 100 100 100 100 80 80 60];
        load_industrial = [85 85 85 90 90 95 95 95 100 100 100 ...
                        95 95 90 90 97 97 97 97 95 92 90 85 85];
    end
    
    methods
        function obj = loadcase(obj)
            obj.model = loadcase(obj.case_number);
            obj.model.gencost(:, 4) = 2; %4 column - polynoms
            obj.model.gencost(:, 5) = [];%delete 3rd polynom
            obj.model.gencost(:,5:6) = obj.model.gencost(:,5:6)./...
                ([obj.model.gen(:, 9) obj.model.gen(:, 9)] ./1000);
            obj.load = obj.model.bus(:, 3:4);
        end
        
        function obj = insert_gen(obj, ng, node, power)
            obj.model.gen(ng, 1:10) = [node power 0 3 -3 ...
                1.01 100 1 power 0]; %1:10 for GEN_BUS:PMIN
            obj.model.bus(node, 2) = 2; %2 for BUS_TYPE
            %obj.model.bus(31, 2) = 2; %balance node -> load bus
            obj.model.gencost(ng, :) = [2 0 0 2 0.005*ng 0.003*ng];%cost
        end
        
        function obj = load_change(obj, hour)
            obj.model.bus(:, 3:4) = obj.load .* (obj.load_civil(hour)/100);
            for i = [4 8 20 24 39]
                obj.model.bus(i, 3:4) = ...
                    obj.load(i, :) .* (obj.load_industrial(hour)/100);
            end
        end
        
        function result = loadrate(obj, flow)
            a = obj.model.branch(:,6);
            a = [a a a a a a a a a a a a a a a a a a a a a a a a];
            result = flow ./ a;
        end
        
        function result = consumption(obj)
            result = zeros(size(obj.model.bus, 1), 24);
            for hour = 1:24
                result(:, hour) = obj.load(:, 1) .*...
                    (obj.load_civil(hour)/100);
                for i = [4 8 20 24 39]
                    result(i, hour) = ...
                        obj.load(i, 1) .* (obj.load_industrial(hour)/100);
                end
            end
        end
        
        function results = opf(obj)
            results = runopf(obj.model);
        end 
    end
end

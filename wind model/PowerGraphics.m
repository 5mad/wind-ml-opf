classdef PowerGraphics
    %POWERGRAPHICS Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
    end
    
    methods
        function graph_loadrate(obj, load_rate, branch)
            hold on;
            plot(0:1:23, load_rate(branch, :).*100, 'b');
            a = num2str(branch);
            title(['Load rate on branch ' '' a]);
            xlabel('Hour');
            ylabel('Rate, %');
            xlim([0, 23])
            ylim([0, 100])
            grid on;
        end
        
        function graph_cons(obj, cons_bus, node)
            hold on;
            bar(0.5:1:23.5, cons_bus(node, :), 1, 'b');
            a = num2str(node);
            title(['Consumption in node ' '' a]);
            xlabel('Hour');
            ylabel('Load, MW');
            xlim([0, 24])
            grid on;
        end
        
        function graph_generation(obj, gen, number)
            hold on;
            plot(0:1:23, gen(number, :), 'r');
            a = num2str(number);
            title(['Load rate on branch ' '' a]);
            xlabel('Hour');
            ylabel('Power, MW');
            xlim([0, 23]);
            ylim([0, max(gen(number, :))*1.1]);
            grid on;
        end 
        
        function graph_saturated(obj, load_rate)
            sat = zeros(1, 24);
            for hour = 1:24
                number = 0;
                for branch = 1:46
                    if load_rate(branch, hour) > 0.98
                        number = number + 1;
                    end
                end
                sat(1, hour) = number;
            end
            hold on;
            bar(0.5:1:23.5, sat(1, :), 1, 'b');
            xlabel('Hour');
            ylabel('Number');
            xlim([0, 24])
            grid on;
        end 
        
        function graph_hoursat(obj, load_rate)
            sat = zeros(46, 2);
            for branch = 1:46
                number = 0;
                over = 0;
                for hour = 1:24
                    if load_rate(branch, hour) > 0.98 && ...
                            load_rate(branch, hour) <= 1
                        number = number + 1;
                    elseif load_rate(branch, hour) > 1
                        over = over + 1;
                    end
                end
                sat(branch, 1) = number;
                sat(branch, 2) = over;
            end
            disp(sat);
            hold on;
            bar(0.5:1:45.5, sat, 1, 'stacked');
            xlabel('Branch number');
            ylabel('Hours of high load');
            xlim([0, 46]);
            ylim([0, 24]);
            grid on;
        end 
        
        function graph_cost(obj, cost)
            hold on;
            plot(1:1:24, cost, 'b');
            xlabel('Hour');
            ylabel('MW cost, u/MW');
            xlim([0, 24])
            grid on;
        end
        
        function graph_loss(obj, loss)
            hold on;
            plot(1:1:24, loss, 'b');
            xlabel('Hour');%,'FontSize', 14,'fontname', 'Times New Roman');
            ylabel('Losses, MW');
            %'FontSize', 14,'fontname', 'Times New Roman');
            xlim([0, 24])
            grid on;
        end
    end
end


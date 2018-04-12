classdef windTurbine
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        air_density
        radius
        rot_speed
        blade_angle
    end
    
    methods
        function p = Power(obj, wind_speed)
            swept_area = pi * obj.radius^2;
            tip_speed = obj.rot_speed * obj.radius / wind_speed;
            c_power = 0.5 * (116/tip_speed - 0.4 * ...
                obj.blade_angle - 5) * exp(-21 / tip_speed);
            p_mech = 0.5 * obj.air_density * swept_area * ...
                wind_speed ^ 3 * c_power;
            p = p_mech * 0.99 * 0.98 / 1e+6;
        end
    end
    
end


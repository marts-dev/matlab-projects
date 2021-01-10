classdef Global < handle
    %GLOBAL Object
    % Object containing global data
    
    properties
        Countries
        Cases
        Deaths
    end
    
    methods
        function obj = Global()
            obj.Countries = [];
            obj.Cases = [];
            obj.Deaths = [];
        end
        
    end
end


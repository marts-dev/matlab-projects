classdef State < handle
    %STATE Object
    %   Contains covid data
    
    properties
        Name (1,1) string
        Cases
        Deaths
    end
    
    methods
        function obj = State(stateName)
            %STATE Construct an instance of this class
            %   Create a state object here by initializing its name
            arguments
                stateName
            end
            obj.Name = stateName;
            obj.Cases = [];
            obj.Deaths = [];
        end
    end
end


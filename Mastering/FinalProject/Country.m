classdef Country < handle
    %COUNTRY object
    %   Contains a list of states
    
    properties
        Name (1,1) string
        StateList
        States
    end
    
    methods
        function obj = Country(countryName)
            %COUNTRY Construct an instance of this class
            %   Create a country object here by initializing its name
            arguments
                countryName
            end
            obj.Name = countryName;
            obj.StateList = [];
            obj.States = [];
            
        end

    end
end


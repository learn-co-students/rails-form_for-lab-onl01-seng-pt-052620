class SchoolClassesController < ApplicationController

    
    
    
    def show
        @school_class = SchoolClass.find(school_class_params)
    end

    private

    def school_class_params
        
    end
end

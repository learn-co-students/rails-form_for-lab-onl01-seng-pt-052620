class SchoolClassesController < ApplicationController

    def new
        @school_class = SchoolClass.new
        
    end

    def create
        @school_class = SchoolClass.new(school_class_params)
        if @school_class.save
            redirect_to school_class_path(@school_class)
        else
            render :new
        end
    end

    
    
    
    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def edit
        set_school_class        
    end

    def update
        set_school_class
        if @school_class.update(school_class_params)
            redirect_to school_class_path(@school_class)
        else
            render :edit
        end

    end

 
    private

    def school_class_params
        params.require(:school_class).permit(:title, :room_number)        
    end

    def set_school_class
        @school_class = SchoolClass.find(params[:id])
    end
end

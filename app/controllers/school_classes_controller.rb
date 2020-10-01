class SchoolClassesController < ApplicationController 
    
    def new
        @school_class = SchoolClass.new
    end 

    def show 
        @school_class = SchoolClass.find(params[:id])
    end

    def create 
        @school_class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end 

    def edit 
        @school_class = SchoolClass.find(params[:id])
    end 

    def update 
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end

    private 

    #def post_params(*args)
        #params.require(:school_classes).permit(*args)
    #end
end
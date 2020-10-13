class StudentsController < ApplicationController

    def show
        set_student
    end

    def new
        @student = Student.new        
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            redirect_to student_path(@student)
        else
            render :new
        end
    end

    def edit
        set_student        
    end

    def update
        set_student
        if @student.update(student_params)
            redirect_to student_path(@student)
        else
            render :edit
        end

    end

 
    private

    def student_params
        params.require(:student).permit(:first_name, :last_name)        
    end

    def set_student
        @student = Student.find(params[:id])
    end
end
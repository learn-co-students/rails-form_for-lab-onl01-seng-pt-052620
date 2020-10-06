class StudentsController < ApplicationController
    def index
        @student = Student.all 
     end
 
     def show
         @student = Student.find(params[:id])
     end
 
     def new
         @student = Student.new   
     end 
 
     def create  
         @student = Student.new(student_params) 
         @student.save 
         redirect_to student_path(@student) 
     end
 
     def edit
         @student = Student.find(params[:id])
     end
 
     def update
         @student = Student.find(params[:id])
         @student.update(student_params) 
         redirect_to student_path(@student) 
     end
 
  private

     def student_params
        params.require(:student).permit!  
     end 
end


# form page
#   form renders with the new action
#   new form submits content and renders form content (FAILED - 1)
#   edit form submits content and renders form content
#   submitted new form creates a record in the database (FAILED - 2)
#   submitted edit form creates a record in the database
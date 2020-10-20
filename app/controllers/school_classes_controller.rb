class SchoolClassesController < ApplicationController

def create
  @schcl = SchoolClass.new(class_params)
  @schcl.save
  redirect_to school_class_path(@schcl)
end

def new
  @schcl = SchoolClass.new
end

def show
  @schcl = SchoolClass.find(params[:id])
end

def edit
  @schcl = SchoolClass.find(params[:id])
end

def update
  @schcl = SchoolClass.find(params[:id])
  @schcl.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
  redirect_to school_class_path(@schcl)
end

  private

  def class_params
    params.require(:school_class).permit(:title, :room_number)
  end


end

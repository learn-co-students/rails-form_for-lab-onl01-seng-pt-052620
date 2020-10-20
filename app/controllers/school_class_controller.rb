class SchoolClassController < ApplicationController

  def create
    @schcl = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
    @schcl.title = params[:title]
    @schcl.room_number = params[:room_number]
    @schcl.save
    redirect_to school_class_path(@schcl)
  end

  def new
    @schcl = SchoolClass.new
  end

  def show
    @schcl = SchoolClass.find(params[:id])
  end
end

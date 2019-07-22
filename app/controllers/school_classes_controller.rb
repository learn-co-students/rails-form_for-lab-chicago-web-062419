class SchoolClassesController < ApplicationController
  def index
    @scs = SchoolClass.all
  end

  def show
    find_school_class
  end

  def new
    @schoolclass = SchoolClass.new
  end

  def create
    @schoolclass = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@schoolclass)
  end

  def edit
    find_school_class
  end

  def update
    find_school_class
    @schoolclass.update(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@schoolclass)
  end

  def delete
  end

  def find_school_class
    @schoolclass = SchoolClass.find(params[:id])
  end
end

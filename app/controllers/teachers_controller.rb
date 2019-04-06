class TeachersController < ApplicationController
  before_action :find_teacher, only:[:show, :destroy, :update]

  def index
  end

  def show
    @teacher
  end

  def new
  end

  def create
  end

  def update
    @teacher
  end
  
  def destroy
    @teacher.destroy
    #needs a link
  end

  private

  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name)
  end

  def find_teacher
    @teacher = Teacher.find(params[:id])
  end

end

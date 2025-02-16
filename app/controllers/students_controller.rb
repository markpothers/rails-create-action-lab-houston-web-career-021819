class StudentsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    student = Student.create(student_params)
   # byebug
    redirect_to student
  end

  def student_params
    params.permit :first_name, :last_name
  end

end

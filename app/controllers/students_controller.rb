class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    self.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save
    redirect_to student_path(@student)
  end

end

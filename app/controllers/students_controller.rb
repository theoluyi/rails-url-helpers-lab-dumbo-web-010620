class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active 
    @student.save 
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end

  # MY GUESS
  # def activate
  #   @student = Student.find(params[:id])
  #   if @student.active
  #     @student.active = false
  #   elsif !@student.active
  #     @student.active = true
  #   end 
  #   redirect_to show
  # end

  # wrong
  # def edit 
  #   @student = Student.find(params[:id])
  # end 

  # def update

  # end 

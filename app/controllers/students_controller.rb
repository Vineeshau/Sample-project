# frozen_string_literal: true

class StudentsController < ApplicationController
	before_action :find_student, only: [:show, :update, :edit, :destroy]

  def index
    @students = Student.all
    # binding.pry
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    # @student.image = params[:student][:image]
    # binding.pry
    # first_name: params[:student][:first_name],
    # last_name: params[:student][:last_name],
    # phone: params[:student][:phone],
    # email: params[:student][:email]

    if @student.save
      redirect_to students_path
    else
      render :new
    end
  end

  def show
    # @student = Student.find(params[:id])
  end

  def edit
    # @student = Student.find(params[:id])
  end

  def update
    # @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to student_path
    else
      render :edit
    end
  end

  def destroy
    # @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :phone, :email, :country, :image, :value)
  end

  def find_student
  	@student = Student.find(params[:id])
  end
end

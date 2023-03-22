# frozen_string_literal: true

class Api::V1::StudentsController < ApplicationController
  before_action :find_students, only: %i[show update destroy]

  def index
    render json: { message: 'Student details', data: Student.all }, status: :accepted
  end

  def show
    # binding.pry
    if @student.present?
      render json: { message: 'Showing one student', data: @student }, status: :found
    else
      render json: { message: 'Student Not found' }, status: :not_found
    end
  end

  def create
    student = Student.create(student_params)
    render json: { message: 'New student created', data: student }, status: :created
  end

  def update
    # student = Student.find(params[:id])
    if @student.present?
      @student.update(student_params)
      if @student.errors.present?
        render json: { message: @student.errors.full_messages }, status: :not_found
      else
        render json: { message: 'Student updated successfully', data: @student }, status: :ok
      end
    else
      render json: { message: 'Student Not found' }, status: :not_found
    end
  end

  def destroy
    if @student.present?
      @student.destroy
      render json: { message: 'Student removed successfully', data: @student }, status: :ok
    else
      render json: { message: 'Student Not found' }, status: :not_found
    end
  end

  private

  def student_params
    params.require(:student).permit(:name, :age, :email, :place)
  end

  def find_students
    @student = Student.find_by(id: params[:id])
  end
end

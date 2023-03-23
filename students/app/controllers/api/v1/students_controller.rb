# frozen_string_literal: true

class Api::V1::StudentsController < ApplicationController
  before_action :authorize_request
  before_action :find_students, only: %i[show update destroy]

  def index
    render json: { message: 'Student details', data: Student.all }, status: :accepted
  end

  def show
    # binding.pry
    render json: { message: 'Showing one student', data: @student }, status: :found
  end

  def create
    student = Student.create(student_params)
    render json: { message: 'New student created', data: student }, status: :created
  end

  def update
    # student = Student.find(params[:id])
    @student.update(student_params)
    if @student.errors.present?
      render json: { message: @student.errors.full_messages }, status: :not_found
    else
      render json: { message: 'Student updated successfully', data: @student }, status: :ok
    end
  end

  def destroy
    @student.destroy
    render json: { message: 'Student removed successfully', data: @student }, status: :ok
  end

  private

  def student_params
    params.require(:student).permit(:name, :age, :email, :place)
  end

  def find_students
    @student = Student.find_by(id: params[:id])
    if !@student.present?
      render json: { message: 'Student Not found' }, status: :not_found
    end
  end
end

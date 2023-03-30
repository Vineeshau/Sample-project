# frozen_string_literal: true

class Api::V1::StudentsController < ApplicationController
  before_action :authorize_request
  before_action :find_students, only: %i[show view_marks]
  before_action :admin_permission, only: %i[create index update timetable]

  def index
    render json: { message: "All students", data: Student.all }, status: :ok
  end

  def show
    render json: { message: 'Showing one student', data: @student }, status: :found
  end

  def create
    student = Student.create(student_params)
    render json: { message: 'New student created', data: student }, status: :created
  end

  def view_marks
    @mark = Mark.where(student_exam_id: Student.find(@current_user.index).student_exams.pluck(:id))
    render json: @mark, status: :ok 
  end

  def update
    @student.update(student_params)
    if @student.errors.present?
      render json: { message: @student.errors.full_messages }, status: :not_found
    else
      render json: { message: 'Student updated successfully', data: @student }, status: :ok
    end
  end

  def timetable
    @exam = Exam.all
    render json: @exam, status: 200
  end

  private

  def student_params
    params.require(:student).permit(:name, :age, :email, :place, :group_id)
  end

  def find_students
    @student = Student.find_by(id: params[:id])
    render json: { message: 'Student Not found' }, status: :not_found unless !@student.present?
  end

  def admin_permission
    @permission = @current_user.role
    if @permission == "s"
      render json: { message: 'You are not authorized!!!' }, status: :unauthorized
    end
  end
end

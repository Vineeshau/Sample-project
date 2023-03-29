class Api::V1::TeachersController < ApplicationController

  def create
    teacher = Teacher.create(teacher_param)
    render json: { message: "teacher created", data: teacher }, status: :ok
  end

  private

  def teacher_param
    params.require(:teacher).permit(:teacher_name, :department_id)
  end
end

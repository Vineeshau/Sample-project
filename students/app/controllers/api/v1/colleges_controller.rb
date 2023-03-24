class Api::V1::CollegesController < ApplicationController

  def index
    render json: { message: "All details", data: College.all }, status: :ok
  end

  def create
    college = College.create(college_params)

    render json: { message: "New record added", data: college}, status: :created
  end

  private

  def college_params
    binding.pry
    params.require(:college).permit(:department_id, :user_id, :student_id)
  end
end

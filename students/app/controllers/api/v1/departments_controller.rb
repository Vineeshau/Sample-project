class Api::V1::DepartmentsController < ApplicationController

  def index
    render json: { message: "Departments deatils", data: Department.all }, status: :ok
  end

  def create
    department = Department.create(department_params)
    render json: { message: "Department deatils added", data: department }, status: :created
  end

  private

  def department_params
    params.require(:department).permit(:dept_name, :dept_code, :student_id, :teacher_id)
  end

end

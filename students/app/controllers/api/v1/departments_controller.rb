class Api::V1::DepartmentsController < ApplicationController
  before_action :authorize_request
  before_action :admin, only: %i[create index]

  def index
    render json: { message: "Departments deatils", data: Department.all }, status: :ok
  end

  def create
    department = Department.create(department_params)
    render json: { message: "Department deatils added", data: department }, status: :created
  end

  def dept_details
    # binding.pry
    @dept = Department.find_by(id: params[:id])
    render json: @dept, status: :ok
  end

  private

  def department_params
    params.require(:department).permit(:dept_name, :dept_code, :student_id, :teacher_id)
  end

  def admin
    @permission = @current_user.role
    if @permission == 's' || @permission == 't'
      render json: { message: "You have no permissions!!"}, status: :unauthorized
    end
  end

end

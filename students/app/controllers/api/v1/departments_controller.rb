class Api::V1::DepartmentsController < ApplicationController
  before_action :authorize_request
  before_action :admin, only: %i[create teacher_create parent_create dept_details index]

  def index
    render json: { message: "Departments deatils", data: Department.all }, status: :ok
  end

  def create
    department = Department.create(department_params)
    render json: { message: "Department deatils added", data: department }, status: :created
  end

   def teacher_create
    teacher = Teacher.create(teacher_param)
    render json: { message: "teacher created", data: teacher }, status: :ok
  end

  def parent_create
    parent = Parent.create(parent_params)
    render json: { message: "parent created", data: parent }, status: :ok
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

  def teacher_param
    params.require(:teacher).permit(:teacher_name, :department_id)
  end

  def parent_params
    params.require(:parent).permit(:parent_name)
  end

  def admin
    @permission = @current_user.role
    if @permission == 's' || @permission == 't' || @permission == 'p'
      render json: { message: "You have no permissions!!"}, status: :unauthorized
    end
  end
end

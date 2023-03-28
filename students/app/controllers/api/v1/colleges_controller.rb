class Api::V1::CollegesController < ApplicationController
  before_action :authorize_request
  before_action :admin, only: %i[create index show dept_search]

  def index
    render json: { message: "All records", data:College.all }, status: :ok
  end

  def show
    college = College.find_by(id: params[:id])
    render json: { message: "Found", data: college }, status: :ok
  end

  def create
    details = []
    college_params[:student_id].each do |data|
      details << College.create(department_id: college_params[:department_id], user_id: college_params[:user_id],student_id: data[:id])
    end 
    render json: { message: "New record added", data: details}, status: :created
  end

  def dept_search
    @dept = College.where(id: params[:t_id])
    render json: @dept, status: 200
    # binding.pry
    # @teacher = []
    # @student = []   
    # @id = Department.where(dept_name: params[:dept_name]).first.id
    # if @dept
    #   @department = College.where(department_id: @id).each do |data|
    #     @student << data.student.name
    #     @teacher << data.user.name
    #   end
    # @teacher.uniq!
    # end
  end

  private

  def college_params
    params.require(:college).permit(:department_id, :user_id, student_id: [:id])
  end

  def admin
    @permission = @current_user.role
    if @permission == 's' || @permission == 't'
      render json: { message: "You have no permissions!!"}, status: :unauthorized
    end
  end
end

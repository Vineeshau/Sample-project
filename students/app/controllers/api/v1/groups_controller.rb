class Api::V1::GroupsController < ApplicationController
  before_action :authorize_request
  before_action :admin, only: %i[index create]

  def index
    render json: { message: "All Classes", data: Group.all }, status: :ok
  end

  def create
    group = Group.create(group_param) 
    render json: { message: "Class created", data: group }, status: :ok
  end

  private

  def group_param
    params.require(:group).permit(:class_name, :department_id, :teacher_id)
  end

  def admin
    @permission = @current_user.role
    if @permission == 's' || @permission == 't' || @permission == 'p'
      render json: { message: "You have no permissions!!"}, status: :unauthorized
    end
  end
end

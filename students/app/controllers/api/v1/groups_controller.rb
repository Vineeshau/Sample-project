class Api::V1::GroupsController < ApplicationController

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
end

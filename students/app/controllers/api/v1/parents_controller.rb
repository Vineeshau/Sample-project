class Api::V1::ParentsController < ApplicationController

  def create
    parent = Parent.create(parent_params)
    render json: { message: "parent created", data: parent }, status: :ok
  end

  private

  def parent_params
    params.require(:parent).permit(:parent_name)
  end
end

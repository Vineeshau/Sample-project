class Api::V1::SubjectsController < ApplicationController
  before_action :authorize_request
  before_action :admin, only: %i[create]

  def create
    subject = Subject.create(subject_params)
    render json: { message: "subjects added", data: subject }, status: :ok
  end

  private

  def subject_params
    params.require(:subject).permit(:sub_name, :teacher_id)
  end

  def admin
    @permission = @current_user.role
    if @permission == 's' || @permission == 't' || @permission == 'p'
      render json: { message: "You have no permissions!!"}, status: :unauthorized
    end
  end
end

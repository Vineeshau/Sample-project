class Api::V1::MarksController < ApplicationController
  before_action :authorize_request
  before_action :teacher, only: %i[create]
  
  def create
    mark = Mark.create(mark_params)
    render json: { message: "mark added", data: mark }, status: :ok
  end

  private

  def mark_params
    params.require(:mark).permit(:sub_name, :mark1, :student_exam_id, :progress_report)
  end

  def teacher
    if @permission == 's' || @permission == 'a' || @permission == 'p'
      render json: { message: "You have no permissions!!"}, status: :unauthorized
    end
  end
end

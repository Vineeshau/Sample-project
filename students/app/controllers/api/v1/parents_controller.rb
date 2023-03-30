class Api::V1::ParentsController < ApplicationController
  before_action :authorize_request

  def create
    parent = Parent.create(parent_params)
    render json: { message: "parent created", data: parent }, status: :ok
  end

  def progress_card
    @mark = Mark.where(student_exam_id: Student.find(@current_user.index).student_exams.pluck(:id))
    render json: @mark, status: :ok 
  end

  private

  def parent_params
    params.require(:parent).permit(:parent_name)
  end
end

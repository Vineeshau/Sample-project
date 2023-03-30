class Api::V1::ParentsController < ApplicationController
  before_action :authorize_request
  before_action :parent, only: %i[sighn progress_card]

  def sighn
    @mark = Mark.where(student_exam_id: Student.find(@current_user.index).student_exams.pluck(:id))
    @sign = @mark.update(mark_params)
    render json: { message: 'Progress updated successfully', data: @sign }, status: :ok
  end

  def progress_card
    @mark = Mark.where(student_exam_id: Student.find(@current_user.index).student_exams.pluck(:id))
    render json: @mark, status: :ok 
  end

  private

  def mark_params
    params.permit(:progress_report)
  end

  def parent
    if @permission == 's' || @permission == 'a' || @permission == 't'
      render json: { message: "You have no permissions!!"}, status: :unauthorized
    end
  end
end

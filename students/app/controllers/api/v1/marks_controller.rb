class Api::V1::MarksController < ApplicationController

  def create
    mark = Mark.create(mark_params)
    render json: { message: "mark added", data: mark }, status: :ok
  end

  private

  def mark_params
    params.require(:mark).permit(:sub_name, :mark1, :student_exam_id, :progress_report)
  end
end

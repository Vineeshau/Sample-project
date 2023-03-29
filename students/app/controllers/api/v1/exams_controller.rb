class Api::V1::ExamsController < ApplicationController

  def create
    exam = Exam.create(exam_params)
    render json: { message: "exams added", data: exam }, status: :ok
  end

  private

  def exam_params
    params.require(:exam).permit(:exam_name, :shedule_date, :subject_id)
  end
end

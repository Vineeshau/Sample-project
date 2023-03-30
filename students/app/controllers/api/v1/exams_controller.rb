class Api::V1::ExamsController < ApplicationController
  before_action :authorize_request
  before_action :teacher, only: %i[create]
  
  def create
    exam = Exam.create(exam_params)
    render json: { message: "exams added", data: exam }, status: :ok
  end

  private

  def exam_params
    params.require(:exam).permit(:exam_name, :shedule_date, :subject_id)
  end

  def teacher
    if @permission == 's' || @permission == 'a' || @permission == 'p'
      render json: { message: "You have no permissions!!"}, status: :unauthorized
    end
  end
end

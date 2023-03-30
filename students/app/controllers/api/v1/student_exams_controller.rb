class Api::V1::StudentExamsController < ApplicationController
  before_action :authorize_request
  before_action :teacher, only: %i[create]

  def create
    stud_exam = StudentExam.create(stud_exam_params)
    render json: { message: "records created", data: stud_exam }, status: :ok
  end

  private

  def stud_exam_params
    params.require(:student_exam).permit(:exam_types, :exam_id, :student_id)
  end

  def teacher
    if @permission == 's' || @permission == 'a' || @permission == 'p'
      render json: { message: "You have no permissions!!"}, status: :unauthorized
    end
  end
end

class Api::V1::StudentExamsController < ApplicationController

  def create
    stud_exam = StudentExam.create(stud_exam_params)
    render json: { message: "records created", data: stud_exam }, status: :ok
  end

  private

  def stud_exam_params
    params.require(:student_exam).permit(:exam_types, :exam_id, :student_id)
  end
end

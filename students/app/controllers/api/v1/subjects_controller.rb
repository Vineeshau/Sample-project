class Api::V1::SubjectsController < ApplicationController

  def create
    subject = Subject.create(subject_params)
    render json: { message: "subjects added", data: subject }, status: :ok
  end

  private

  def subject_params
    params.require(:subject).permit(:sub_name, :teacher_id)
  end
end

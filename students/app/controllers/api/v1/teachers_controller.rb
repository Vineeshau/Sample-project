class Api::V1::TeachersController < ApplicationController
  before_action :authorize_request
  before_action :find_students, only: %i[stud_show stud_update stud_destroy]
  before_action :teacher_permission, only: %i[stud_index create stud_show stud_update stud_destroy]


  def stud_index
    if @current_user.index == 0
      render json: { message: 'Class Teachers edit field' }, status: :ok
    else
      @teacher = Teacher.find(@current_user.index)
      @students = @teacher.students
      render json: { message: 'Student details', data: @students }, status: :accepted
    end
  end

  def stud_show
    render json: { message: 'Showing one student', data: @student }, status: :found
  end

  def stud_update
    @teacher = Teacher.find(@current_user.index)
    @students = @teacher.students
    id_arr = []
    id_arr = @students.map {|val| val.id}
    if id_arr.include?(@student.id)
      @student.update(student_params)
      if @student.errors.present?
        render json: { message: @student.errors.full_messages }, status: :not_found
      else
        render json: { message: 'Student updated successfully', data: @student }, status: :ok
      end
    else
      render json: { message: "You have no permissions!!"}, status: :unauthorized
    end      
  end

  def stud_destroy
    @teacher = Teacher.find(@current_user.index)
    @students = @teacher.students
    id_arr = []
    id_arr = @students.map {|val| val.id}
    if id_arr.include?(@student.id)
      @student.is_active = false
      @student.save
      render json: { message: 'Student removed successfully', data: @student }, status: :ok
    else
      render json: { message: "You have no permissions!!"}, status: :unauthorized
    end 
  end

  private

  def student_params
    params.require(:student).permit(:name, :age, :email, :place, :group_id)
  end

  def find_students
    @student = Student.find(params[:id])
    render json: { message: 'Student Not found' } unless @student.present?
  end

  def teacher_permission
    @student = Student.find_by(id: params[:id])
    @permission = @current_user.role
    if @permission == 's' || @permission == 'a' || @permission == 'p'
      render json: { message: "You have no permissions!!"}, status: :unauthorized
    end
  end
end

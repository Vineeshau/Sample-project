class CollegeSerializer < ActiveModel::Serializer
  attributes :id, :department_details, :teacher_details, :student_details

  def department_details
    object.department
  end

  def teacher_details
    object.user
  end

  def student_details
    binding.pry
    object.students
  end

end

class DepartmentSerializer < ActiveModel::Serializer
  attributes :id, :dept_name, :teacher_name, :student_name

  def teacher_name
    object.groups.first.teacher.teacher_name
  end

  def student_name
    object.groups.first.students
  end
end

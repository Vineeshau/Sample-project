class CreateStudentExams < ActiveRecord::Migration[7.0]
  def change
    create_table :student_exams do |t|
      t.string :exam_types
      t.belongs_to :exam
      t.belongs_to :student
      t.timestamps
    end
  end
end

class CreateExams < ActiveRecord::Migration[7.0]
  def change
    create_table :exams do |t|
      t.string :exam_name
      t.datetime :shedule_date
      t.belongs_to :department
      t.belongs_to :user
      t.timestamps
    end
  end
end

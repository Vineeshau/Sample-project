class CreateMarks < ActiveRecord::Migration[7.0]
  def change
    create_table :marks do |t|
      t.string :sub_name
      t.bigint :mark1
      t.belongs_to :student_exam
      t.boolean :progress_report
      t.timestamps
    end
  end
end

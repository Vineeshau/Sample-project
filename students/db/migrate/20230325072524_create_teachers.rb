class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.string :teacher_name
      t.belongs_to :department
      t.timestamps
    end
  end
end

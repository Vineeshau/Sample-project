class CreateMarks < ActiveRecord::Migration[7.0]
  def change
    create_table :marks do |t|
      t.string :sub_name
      t.bigint :mark1
      t.bigint :mark2
      t.bigint :mark3
      t.belongs_to :student
      t.belongs_to :user
      t.boolean :progress_report
      t.timestamps
    end
  end
end

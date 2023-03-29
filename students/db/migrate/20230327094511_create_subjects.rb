class CreateSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects do |t|
      t.string :sub_name
      t.belongs_to :teacher
      t.timestamps
    end
  end
end

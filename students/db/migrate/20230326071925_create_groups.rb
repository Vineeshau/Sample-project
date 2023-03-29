class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    #class
    create_table :groups do |t|
      t.string :class_name
      t.belongs_to :department
      t.belongs_to :teacher
      t.timestamps
    end
  end
end

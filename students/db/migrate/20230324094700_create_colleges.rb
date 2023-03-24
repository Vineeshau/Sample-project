class CreateColleges < ActiveRecord::Migration[7.0]
  def change
    create_table :colleges do |t|
      t.belongs_to :user
      t.belongs_to :department
      t.belongs_to :student
      t.timestamps
    end
  end
end

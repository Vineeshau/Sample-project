class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.bigint :age
      t.string :email
      t.string :place
      t.timestamps
    end
  end
end

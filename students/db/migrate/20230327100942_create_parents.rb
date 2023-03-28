class CreateParents < ActiveRecord::Migration[7.0]
  def change
    create_table :parents do |t|
      t.string :parent_name
      t.timestamps
    end
  end
end

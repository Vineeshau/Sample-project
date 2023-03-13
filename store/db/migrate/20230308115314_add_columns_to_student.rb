class AddColumnsToStudent < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :country, :string unless column_exists?(:students, :country)
    add_column :students, :value, :string
    add_column :students, :image, :string
  end
end

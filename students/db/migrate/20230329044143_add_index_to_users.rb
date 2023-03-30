class AddIndexToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :index, :bigint
  end
end

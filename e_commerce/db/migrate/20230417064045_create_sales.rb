class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.belongs_to :product
      t.belongs_to :customer
      t.date :date
      t.timestamps
    end
  end
end

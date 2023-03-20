class AddPaymentStatus < ActiveRecord::Migration[7.0]
  def change
    add_column :sales, :payment_status, :string
  end
end

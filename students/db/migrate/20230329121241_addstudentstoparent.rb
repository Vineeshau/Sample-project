class Addstudentstoparent < ActiveRecord::Migration[7.0]
  def change
    add_reference :students, :parent, index: true
  end
end

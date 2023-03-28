class AddReferenceToParent < ActiveRecord::Migration[7.0]
  def change
    add_reference :parents, :student, index: true
  end
end

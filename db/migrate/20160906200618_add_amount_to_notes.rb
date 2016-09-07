class AddAmountToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :amount, :integer
  end
end

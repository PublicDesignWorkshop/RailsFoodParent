class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.belongs_to :tree, index: true
      t.belongs_to :location, index: true
      t.string :comment
      t.integer :amount
      t.timestamps null: false
    end
  end
end

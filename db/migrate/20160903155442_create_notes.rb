class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :type
      t.belongs_to :tree
      t.string :comment
      t.string :picture
      t.integer :rating
      t.integer :timing
      t.timestamps null: false
    end
  end
end

class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :icon
      t.boolean :adoptable, default: false
      t.boolean :visible, default: true
      t.timestamps null: false
    end
  end
end

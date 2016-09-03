class CreateTrees < ActiveRecord::Migration
  def change
    create_table :trees do |t|
      t.float :latitude
      t.float :longitude
      t.string :description
      t.string :address
      t.boolean :public
      t.boolean :dead
      t.boolean :rating
      t.timestamps null: false
    end
  end
end

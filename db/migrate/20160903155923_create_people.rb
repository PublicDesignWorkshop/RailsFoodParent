class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :contact
      t.string :password
      t.string :neighborhood
      t.boolean :is_active
      t.timestamps null: false
    end
  end
end

class CreateAdoptions < ActiveRecord::Migration
  def change
    create_table :adoptions do |t|
      t.belongs_to :person, index: true
      t.belongs_to :tree, index: true
      t.timestamps null: false
    end
  end
end

class CreateAdoptions < ActiveRecord::Migration
  def change
    create_table :adoptions do |t|

      t.timestamps null: false
    end
  end
end

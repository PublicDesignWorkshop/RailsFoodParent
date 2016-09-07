class AddIndicesToFood < ActiveRecord::Migration
  def change
    add_belongs_to(:trees, :food, index: true)
    add_belongs_to(:donations, :food, index: true)
  end
end

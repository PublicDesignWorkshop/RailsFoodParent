class AddTempTreeListToDonations < ActiveRecord::Migration
  def change
    add_column :donations, :tree_list, :string
  end
end

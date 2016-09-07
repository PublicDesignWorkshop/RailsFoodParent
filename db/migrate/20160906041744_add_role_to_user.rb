class AddRoleToUser < ActiveRecord::Migration
  def change
    add_column :users, :role, :integer
    change_column :users, :is_active, :boolean, default: true
  end
end

class RenameUserToUser < ActiveRecord::Migration
  def change
    rename_table :users, :users
  end
end

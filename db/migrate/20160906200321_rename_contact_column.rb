class RenameContactColumn < ActiveRecord::Migration
  def change
    rename_column :users, :contact, :email
  end
end

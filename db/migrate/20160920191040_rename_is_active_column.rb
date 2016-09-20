class RenameIsActiveColumn < ActiveRecord::Migration
  def change
    rename_column :users, :is_active, :active
  end
end

class AddDefaults < ActiveRecord::Migration
  def change
    change_column :trees, :dead, :boolean, default: false
    rename_column :adoptions, :person_id, :user_id
  end
end

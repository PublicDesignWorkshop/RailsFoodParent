class AddDefaults < ActiveRecord::Migration
  def change
    change_column :trees, :dead, :boolean, default: false
  end
end

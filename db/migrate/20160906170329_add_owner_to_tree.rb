class AddOwnerToTree < ActiveRecord::Migration
  def change
    add_column :trees, :owner, :integer
  end
end

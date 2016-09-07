class AddIndexToDonation < ActiveRecord::Migration
  def change
    add_belongs_to(:donations, :user, index: true)
  end
end

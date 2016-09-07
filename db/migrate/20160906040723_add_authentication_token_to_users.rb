class AddAuthenticationTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :hashed_authentication_token, :string
  end
end

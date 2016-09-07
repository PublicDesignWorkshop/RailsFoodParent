class AddIndexToNotes < ActiveRecord::Migration
  def change
    add_belongs_to(:notes, :user, index: true)
  end
end

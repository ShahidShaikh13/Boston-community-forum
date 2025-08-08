class AddModeratorToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :moderator, :boolean
  end
end

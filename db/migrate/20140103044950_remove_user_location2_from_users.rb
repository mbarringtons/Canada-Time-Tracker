class RemoveUserLocation2FromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :user_location, :string
  end
end

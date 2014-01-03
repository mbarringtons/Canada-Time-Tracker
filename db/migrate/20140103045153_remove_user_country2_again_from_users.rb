class RemoveUserCountry2AgainFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :user_country, :string
  end
end

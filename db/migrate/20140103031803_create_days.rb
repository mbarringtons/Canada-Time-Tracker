class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.integer :days_in_canada_this_year
      t.integer :days_in_canada_last_year
      t.integer :days_in_canada_tax

      t.timestamps
    end
  end
end

class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :name, :string
  	add_column :users, :address, :string
  	add_column :users, :graduate, :string
  	add_column :users, :experience, :string
  end
end

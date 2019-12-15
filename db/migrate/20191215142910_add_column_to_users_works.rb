class AddColumnToUsersWorks < ActiveRecord::Migration[5.2]
  def change
  	add_column :users_works, :user_id, :integer
    add_column :users_works, :work_id, :integer
    add_column :users_works, :date_of_application, :string
	add_column :users_works, :status, :string
  end
end

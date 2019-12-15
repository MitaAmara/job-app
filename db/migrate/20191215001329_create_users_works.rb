class CreateUsersWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :users_works do |t|

      t.timestamps
    end
  end
end

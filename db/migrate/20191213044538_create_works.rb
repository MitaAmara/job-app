class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
    	t.string :title
    	t.string :position
    	t.string :location
    	t.string :description

      t.timestamps
    end
  end
end

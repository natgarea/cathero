class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
    	t.string :name
    	t.text :description
    	t.text :criteria
    	t.string :image
     	t.timestamps null: false
    end
  end
end

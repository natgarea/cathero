class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
    	t.string :title
    	t.text :description
    	t.string :duration
    	t.string :level
    	t.string :logo
    	t.timestamps null: false
    end
  end
end

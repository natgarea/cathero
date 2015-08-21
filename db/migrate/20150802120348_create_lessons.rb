class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
    	t.string :title
    	t.text :content
    	t.text :activity
    	t.string :solution
    	t.text :hint
    	t.integer :points
    	t.integer :order
      t.integer :course_id
      t.integer :badge_id
      t.timestamps null: false
    end
  end
end

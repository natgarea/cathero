class CreateCourseRegisters < ActiveRecord::Migration
  def change
	create_join_table :users, :courses , table_name: :course_registers do |t|
		t.datetime :created_at
		t.datetime :updated_at
    	t.timestamps null: false
    end
  end
end

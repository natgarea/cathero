class CreateLessonRegisters < ActiveRecord::Migration
  def change
	create_join_table :users, :lessons, table_name: :lesson_registers do |t|
	t.datetime :created_at
	t.datetime :updated_at
    t.timestamps null: false
    end
  end
end

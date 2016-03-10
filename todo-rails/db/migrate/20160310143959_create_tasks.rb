class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name, null: false, default: 'New Task'
      t.boolean :completed, null: false, default: false
      t.datetime :due_date
      t.belongs_to :list, index: true

      t.timestamps null: false
    end
  end
end

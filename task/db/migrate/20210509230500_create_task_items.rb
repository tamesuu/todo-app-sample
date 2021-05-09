class CreateTaskItems < ActiveRecord::Migration[5.2]
  def change
    create_table :task_items do |t|
      t.string :name
      t.integer :status
      t.integer :user_id

      t.timestamps
    end
  end
end

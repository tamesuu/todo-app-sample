# This migration comes from label (originally 20210509090814)
class CreateLabelItems < ActiveRecord::Migration[5.2]
  def change
    create_table :label_items do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end

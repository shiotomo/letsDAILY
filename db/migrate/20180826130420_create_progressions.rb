class CreateProgressions < ActiveRecord::Migration[5.2]
  def change
    create_table :progressions do |t|
      t.text :comment
      t.integer :task_id

      t.timestamps
    end
  end
end

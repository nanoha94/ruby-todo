class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.datetime :start_time, null: false
      t.datetime :end_time
      t.integer :status, default: 0, null: false

      t.timestamps
    end
  end
end

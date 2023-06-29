class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.string :allday
      t.boolean :checkbox
      t.string :memo

      t.timestamps
    end
  end
end

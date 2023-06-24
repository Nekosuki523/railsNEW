class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :title
      dt.date :start_date
      t.date :end_date
      t.string :allday
      tboolean :checkbox
      t.string :memo
       
      t.timestamps
    end
  end
end

class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.date :date
      t.time :time
      t.string :activity

      t.timestamps
    end
  end
end

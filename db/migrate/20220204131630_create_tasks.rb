class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :due_date
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end

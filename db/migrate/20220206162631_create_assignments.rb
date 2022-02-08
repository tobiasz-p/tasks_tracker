# frozen_string_literal: true

class CreateAssignments < ActiveRecord::Migration[7.0]
  def change
    create_table :assignments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end

    add_index(:assignments, %i[task_id user_id], unique: true)
  end
end

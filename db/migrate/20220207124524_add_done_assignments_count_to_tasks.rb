class AddDoneAssignmentsCountToTasks < ActiveRecord::Migration[7.0]
  def self.up
    add_column :tasks, :done_assignments_count, :integer, null: false, default: 0
  end

  def self.down
    remove_column :tasks, :done_assignments_count
  end
end

# frozen_string_literal: true

class AddStatusToAssignment < ActiveRecord::Migration[7.0]
  def change
    add_column :assignments, :done, :boolean
  end
end

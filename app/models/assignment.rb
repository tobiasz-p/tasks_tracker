# frozen_string_literal: true

class Assignment < ApplicationRecord
  belongs_to :assignee, class_name: 'User', foreign_key: :user_id
  belongs_to :task

  counter_culture :task,
                  column_name: proc { |model| model.done? ? 'done_assignments_count' : nil },
                  column_names: {
                    ['assignments.done'] => :done_assignments_count
                  }

  scope :by_user, lambda { |user|
    where(user_id: user.id)
  }
end

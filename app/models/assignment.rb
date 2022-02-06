# frozen_string_literal: true

class Assignment < ApplicationRecord
  belongs_to :assignee, class_name: 'User', foreign_key: :user_id
  belongs_to :task
end

# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: :user_id

  has_many :task_users
  has_many :assignees, through: :task_users, class_name: 'User'
end

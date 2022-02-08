# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: :user_id

  has_many :assignments
  has_many :assignees, through: :assignments

  validates :title, presence: true

  scope :by_user, lambda { |user|
    where(user_id: user.id)
  }
end

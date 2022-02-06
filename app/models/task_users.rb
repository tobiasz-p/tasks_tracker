# frozen_string_literal: true

class TaskUser < ApplicationRecord
  belongs_to :user
  belongs_to :task
end

class Label < ApplicationRecord
  belongs_to :user
  has_many :tasks

  has_many :task_labels
  has_many :tasks, through: :task_labels
end

class Task < ApplicationRecord
  belongs_to :card
  
  has_many :checklists
  has_many :items, through: :checklists

  has_many :task_labels
  has_many :labels, through: :task_labels
end


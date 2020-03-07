class Card < ApplicationRecord
  belongs_to :board
  has_many :tasks, dependent: :destroy
end

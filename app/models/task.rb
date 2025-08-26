class Task < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3 }
  validates :priority, inclusion: { in: 1..5 }
end
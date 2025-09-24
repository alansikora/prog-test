class Task < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3 }
  validates :priority, inclusion: { in: 1..5 }

scope :by_status, ->(s) {
  case s
  when 'pending' then where(completed: false)
  when 'completed' then where(completed: true)
  else all
  end
}

scope :by_priority_bucket, ->(p) {
    case p
    when 'low'    then where(priority: 1..2)
    when 'medium' then where(priority: 3)
    when 'high'   then where(priority: 4..5)
    else all
    end
}

scope :ordered_for_index, -> { order(completed: :asc, created_at: :desc) }
end

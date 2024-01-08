class Task < ApplicationRecord
  enum :status, { not_started: 0, in_progress: 1, closed: 2 }, validate: true

  validates :title, presence: true, length: { minimum: 3, maximum: 20 }
  validates :description, allow_blank: true, length: { minimum: 3, maximum: 500 }
  validates :start_time, presence: true, comparison: { greater_than_or_equal_to: Time.current.beginning_of_day }
  validates :end_time, comparison: { greater_than: :start_time }
end

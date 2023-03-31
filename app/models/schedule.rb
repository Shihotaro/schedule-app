class Schedule < ApplicationRecord
  validates :title, presence: true, length: { maximum: 20 }
  validates :startDay, presence: true
  validates :finalDay, presence: true
  validates :scheduleMemo, length: { maximum: 500 }
  validates :finalDay, comparison: { greater_than_or_equal_to: :startDay }
end

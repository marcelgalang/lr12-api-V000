class DiaperOne < ApplicationRecord
  belongs_to :user
  validates :count, presence: true

end

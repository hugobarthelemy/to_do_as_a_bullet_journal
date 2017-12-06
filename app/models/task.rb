class Task < ApplicationRecord
  validates :title, presence: true, allow_nil: false
end

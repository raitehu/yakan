class Career < ApplicationRecord
  validates :the_day, presence: true
  validates :title, presence: true
end

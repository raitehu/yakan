class Program < ApplicationRecord
  belongs_to :performance
  has_many :player, dependent: :destroy
end

class Performance < ApplicationRecord
  has_many :fee_structure
  has_many :program
  mount_uploader :poster, PostersUploader
end

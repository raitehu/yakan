class Performance < ApplicationRecord
  has_many :fee_structures,  dependent: :destroy
  has_many :programs,        dependent: :destroy
  mount_uploader :poster, PostersUploader
  accepts_nested_attributes_for :fee_structures, allow_destroy: true
end

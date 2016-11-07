class Work < ActiveRecord::Base
  has_many :work_images
  accepts_nested_attributes_for :work_images
end

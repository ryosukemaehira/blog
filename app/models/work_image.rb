class WorkImage < ActiveRecord::Base
  belongs_to :work
  mount_uploader :content, ContentUploader
  enum state: { main: 0, sub: 1 }
end

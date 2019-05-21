class Post < ApplicationRecord
  # https://code.tutsplus.com/articles/uploading-with-rails-and-carrierwave--cms-28409
  mount_uploader :image, ImageUploader
  mount_uploaders :attachments, ImageUploader

  validates :title, presence: true, length: {minimum: 2}
  validates :body, presence: true
  validates :image, file_size: { less_than: 1.megabytes }
end

class Article < ApplicationRecord
  has_many :article_images, dependent: :destroy
  accepts_attachments_for :article_images, attachment: :image, append: true
end

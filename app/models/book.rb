class Book < ApplicationRecord
  belongs_to :user
  attachment :profilr_image

  validates :title, presence: true
  validates :opinion, presence: true
end

class Item < ApplicationRecord

  belongs_to :user
  has_one_attached :image

  validates :syohinmei, presence: true
  validates :syohincode, presence: true
  validates :suuryo, presence: true
  validates :comment, presence: true
  validates :image, presence: true

end

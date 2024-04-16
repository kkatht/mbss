class Item < ApplicationRecord

  belongs_to :user
  has_one_attached :image

  validates :syohinmei, presence: true
  validates :syohincode, presence: true
  validates :suuryo, presence: true
  validates :comment, presence: true
  validates :image, presence: true

  def self.search(search)
    if search != ""
      Item.where('syohincode = ?', search)
    else
      Item.all
    end
  end

end

class Shop < ApplicationRecord
  belongs_to :category
  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews
  has_one_attached :image
  attribute :new_image

  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 1000 }
  validates :phone_number, length: { maximum: 15 }
  validates :address, length: { maximum: 100 }
  validates :homepage, length: { maximum: 1000 }
  validates :business_hours, length: { maximum: 200 }
  validates :holiday, length: { maximum: 50 }

  scope :find_newest_shops, -> (p) { page(p).per(4).order(created_at: :desc) }
  
  
  before_save do
    self.image = new_image if new_image
  end
end

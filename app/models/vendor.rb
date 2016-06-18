class Vendor < ActiveRecord::Base
  validates :name,
    presence: true

  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/gif', 'image/png', 'image/jpg']

  has_attached_file :avatar
  validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/gif', 'image/png', 'image/jpg']

  has_many :products, dependent: :destroy
  belongs_to :user
  
end

class Photo < ApplicationRecord
    belongs_to :user
    has_many :photos_access
    has_many :users, through: :photos_access

    has_one_attached :image
    
    validates :name, :url, presence: true
end 
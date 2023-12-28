class Photo < ApplicationRecord
    belongs_to :user
    has_many :photos_access
    has_many :users, through: :photos_access
    
    validates :name, :url, presence: true
end 
class User < ApplicationRecord
    has_many :photos
    has_one :photo_access

    validates :login, :nickname, :password, :code_word, presence: true
    validates :password, length: { in: 6..20 }
    validates :login, :nickname, :code_word, length: { minimum: 2 }
    validates :login, uniqueness: true
end    

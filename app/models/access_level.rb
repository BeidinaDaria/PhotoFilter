class AccessLevel < ApplicationRecord
    has_many :photos_access

    validates :title, presence: true
    validates :title, acceptance: {accept: ['owner','admin','friend','unknown']}
end 
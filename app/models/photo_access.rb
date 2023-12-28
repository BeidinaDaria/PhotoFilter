class PhotoAccess < ApplicationRecord
    belongs_to :user
    belongs_to :photo
    belongs_to :access_level
end 
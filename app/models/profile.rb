class Profile < ApplicationRecord
  belongs_to :applicant
  has_one_attached :avatar
end

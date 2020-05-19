class ApplicantProfile < ApplicationRecord
  has_many :education
  has_many :experience
  belongs_to :applicant
  validates :name, :preferred_name, :description, presence: true
end

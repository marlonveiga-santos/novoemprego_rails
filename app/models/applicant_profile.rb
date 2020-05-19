class ApplicantProfile < ApplicationRecord
  belongs_to :education
  belongs_to :experience
  belongs_to :applicant
  validates :name, :preferred_name, :description, presence: true
end

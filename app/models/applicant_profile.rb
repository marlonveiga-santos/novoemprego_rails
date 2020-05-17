class ApplicantProfile < ApplicationRecord
  belongs_to :education
  belongs_to :experience
end

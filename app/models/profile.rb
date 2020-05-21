class Profile < ApplicationRecord
  belongs_to :applicant
  has_one_attached :avatar
  
  def profile_avatar profile
    if profile.avatar.present?
      image_tag profile.image_url :avatar
    else
      image_tag 'not_found.jpg'
    end
  end
end

class Profile < ApplicationRecord
  include Percentual
  belongs_to :applicant
  has_many :educations, dependent: :destroy 
  accepts_nested_attributes_for :educations
  has_many :professions, dependent: :destroy 
  accepts_nested_attributes_for :professions
  has_one_attached :avatar

  enum gender: {male: 0, female: 1, non_binary: 2, uninformed: 3}

  def profile_avatar profile
    if profile.avatar.present?
      image_tag profile.image_url :avatar
    else
      image_tag 'not_found.jpg'
    end
  end

end

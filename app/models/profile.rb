class Profile < ApplicationRecord
  belongs_to :applicant
  has_many :educations
  accepts_nested_attributes_for :educations
  has_many :professions
  accepts_nested_attributes_for :professions
  has_one_attached :avatar

  def profile_avatar profile
    if profile.avatar.present?
      image_tag profile.image_url :avatar
    else
      image_tag 'not_found.jpg'
    end
  end

  def image_verificator
    checker = 0
    unless avatar.present?
      checker += 1
    end
    unless educations.present?
      checker += 1
    end
    unless professions.present?
      checker += 1
    end
    checker
  end

  # This will count all fields for your model including default 
  # created_at and updated_at model fields
def total_columns
  Profile.column_names.count  
end

# This will display all model fields names
def all_columns
  Profile.column_names  
end

# This will check and counts the total non-empty fields for your model
def filled_columns
  counter = 0
  self.all_columns.each do |column|
    if attributes[column].present?
      counter += 1 
    end
  end
  counter
end

# This will calculates the percentage of completeness for your model
def completeness
  "#{(self.filled_columns * 100) / (total_columns+image_verificator)} %"
end

end

class Headhunter < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :company, optional: true
  has_one :workspace, dependent: :destroy, autosave: true 
  accepts_nested_attributes_for :workspace    
  has_many :jobs     
end

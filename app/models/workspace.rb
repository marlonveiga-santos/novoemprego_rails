class Workspace < ApplicationRecord
  belongs_to :headhunter
  has_one :workspace, dependent: :destroy, autosave: true 
  accepts_nested_attributes_for :workspace

  enum gender: {male: 0, female: 1, non_binary: 2, uninformed: 3}
end

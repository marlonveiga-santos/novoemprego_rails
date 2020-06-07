class ChangeTypeForGender < ActiveRecord::Migration[6.0]
  def change
    change_column(:profiles, :gender, :integer)
  end
end

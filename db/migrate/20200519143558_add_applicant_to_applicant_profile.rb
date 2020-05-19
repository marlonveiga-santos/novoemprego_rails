class AddApplicantToApplicantProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :applicant_profiles, :applicant_id, :integer
  end
end

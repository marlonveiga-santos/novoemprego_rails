class AddApplicantProfileToApplicant < ActiveRecord::Migration[6.0]
  def change
    add_reference :applicants, :applicant, null: false, foreign_key: true
  end
end

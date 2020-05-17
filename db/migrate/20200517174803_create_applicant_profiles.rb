class CreateApplicantProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :applicant_profiles do |t|
      t.string :name
      t.string :preferred_name
      t.date :birth_date
      t.integer :country_state
      t.references :education, null: false, foreign_key: true
      t.string :description
      t.references :experience, null: false, foreign_key: true
      t.string :avatar

      t.timestamps
    end
  end
end

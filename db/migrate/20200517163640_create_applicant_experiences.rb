class CreateApplicantExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :applicant_experiences do |t|
      t.string :company_name
      t.string :job_activity
      t.date :start_date
      t.date :end_date
      t.decimal :salary
      t.string :job_description

      t.timestamps
    end
  end
end

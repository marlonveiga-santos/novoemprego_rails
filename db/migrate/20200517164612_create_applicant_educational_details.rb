class CreateApplicantEducationalDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :applicant_educational_details do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.integer :educational_level

      t.timestamps
    end
  end
end

class CreateProfessions < ActiveRecord::Migration[6.0]
  def change
    create_table :professions do |t|
      t.string :company
      t.string :job_role
      t.date :start_date
      t.date :end_date
      t.decimal :salary
      t.string :attributions
      t.integer :job_area

      t.timestamps
    end
  end
end

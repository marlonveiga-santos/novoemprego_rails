class CreateEducations < ActiveRecord::Migration[6.0]
  def change
    create_table :educations do |t|
      t.string :institution
      t.string :course
      t.date :start_date
      t.date :end_date
      t.integer :level

      t.timestamps
    end
  end
end

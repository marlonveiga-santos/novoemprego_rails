class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.references :headhunter, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.text :habilities
      t.string :salary
      t.integer :level
      t.date :end_date
      t.string :address
      t.text :note

      t.timestamps
    end
  end
end

class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :preferred_name
      t.string :description
      t.date :birth_date

      t.timestamps
    end
  end
end

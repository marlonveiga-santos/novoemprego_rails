class AddProfileReferenceToProfession < ActiveRecord::Migration[6.0]
  def change
    add_reference :professions, :profile, null: false, foreign_key: true
  end
end

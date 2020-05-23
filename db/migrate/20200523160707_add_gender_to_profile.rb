class AddGenderToProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :gender, :string
  end
end

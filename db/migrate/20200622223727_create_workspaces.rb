class CreateWorkspaces < ActiveRecord::Migration[6.0]
  def change
    create_table :workspaces do |t|
      t.string :name
      t.string :preferred_name
      t.integer :gender
      t.text :about
      t.date :birth_date
      t.string :cpf

      t.timestamps
    end
  end
end

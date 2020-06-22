class AddHeadhunterReferenceToWorkspace < ActiveRecord::Migration[6.0]
  def change
    add_reference :workspaces, :headhunter, null: false, foreign_key: true
  end
end

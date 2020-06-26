class AddCompanyIdToHeadhunter < ActiveRecord::Migration[6.0]
  def change
    add_column :headhunters, :company_id, :integer
  end
end

class AddCompanyIdToInterest < ActiveRecord::Migration[5.0]
  def change
    add_column :interests, :company_id, :integer
  end
end

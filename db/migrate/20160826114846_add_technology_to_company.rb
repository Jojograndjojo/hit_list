class AddTechnologyToCompany < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :technology, :string
  end
end

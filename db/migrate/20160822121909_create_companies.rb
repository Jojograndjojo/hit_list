class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :location
      t.string :project
      t.string :interesting_thing
      t.string :person_working_there

      t.timestamps
    end
  end
end

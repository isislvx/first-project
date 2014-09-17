class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :website
      t.string :email
      t.references :address, index: true

      t.timestamps
    end
  end
end

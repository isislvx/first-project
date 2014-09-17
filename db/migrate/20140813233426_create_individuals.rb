class CreateIndividuals < ActiveRecord::Migration
  def change
    create_table :individuals do |t|
      t.string :first_name
      t.string :last_name
      t.string :website
      t.string :email
      t.references :company, index: true

      t.timestamps
    end
  end
end

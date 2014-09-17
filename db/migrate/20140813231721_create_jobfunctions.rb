class CreateJobfunctions < ActiveRecord::Migration
  def change
    create_table :jobfunctions do |t|
      t.string :name

      t.timestamps
    end
  end
end

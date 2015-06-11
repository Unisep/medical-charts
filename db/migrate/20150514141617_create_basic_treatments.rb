class CreateBasicTreatments < ActiveRecord::Migration
  def change
    create_table :basic_treatments do |t|
      t.string :description
      t.boolean :common

      t.timestamps null: false
    end
  end
end

class CreateAdminBasicTreatments < ActiveRecord::Migration
  def change
    create_table :admin_basic_treatments do |t|
      t.string :description
      t.boolean :common

      t.timestamps null: false
    end
  end
end

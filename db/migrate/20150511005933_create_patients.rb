class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :state
      t.string :city
      t.string :zip_code
      t.string :district
      t.string :number
      t.string :phone
      t.string :cellphone

      t.timestamps null: false
    end
  end
end

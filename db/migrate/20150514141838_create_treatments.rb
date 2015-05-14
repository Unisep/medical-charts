class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.references :basic_treatment, index: true
      t.references :patient, index: true
    end

    add_foreign_key :treatments, :basic_treatments
    add_foreign_key :treatments, :patients
  end
end

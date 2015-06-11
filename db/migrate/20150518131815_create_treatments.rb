class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.references :basic_treatment, index: true
      t.references :patient, index: true

      t.timestamps null: false
    end

    add_foreign_key :treatments, :basic_treatments
    add_foreign_key :treatments, :patients
    add_index :treatments, [:basic_treatment_id, :patient_id], unique: true
  end
end

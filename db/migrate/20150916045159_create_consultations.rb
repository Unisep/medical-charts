class CreateConsultations < ActiveRecord::Migration
  def change
    create_table :consultations do |t|
      t.references :patient, index: true
      t.datetime :attend_at
      t.integer :status
      t.references :treatment, index: true
      t.integer :kind

      t.timestamps null: false
    end

    add_foreign_key :appointments, :patients
    add_foreign_key :appointments, :treatments
  end
end

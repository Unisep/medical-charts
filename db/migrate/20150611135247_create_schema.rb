class CreateSchema < ActiveRecord::Migration
  def change
    execute 'CREATE EXTENSION IF NOT EXISTS unaccent;'

    create_table :patients do |t|
      t.date :birthday
      t.string :nationality
      t.string :naturalness
      t.string :profile_image
      t.string :profession
      t.string :primary_document
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
      t.integer :step, default: 1
      t.integer :sex, index: true
      t.integer :ethnicity, index: true
      t.integer :marital_status, index: true

      t.timestamps null: false
    end

    create_table :basic_treatments do |t|
      t.string :description
      t.boolean :common
    end

    create_table :treatments do |t|
      t.references :basic_treatment, index: true
      t.references :patient, index: true

      t.boolean :completed, default: false

      t.timestamps null: false
    end

    add_foreign_key :treatments, :basic_treatments
    add_foreign_key :treatments, :patients

    add_index :treatments, [:basic_treatment_id, :patient_id], unique: true

    create_table :appointments do |t|
      t.datetime :attend_at
      t.references :patient, index: true
      t.references :treatment, index: true
      t.integer :status
      t.integer :kind

      t.timestamps null: false
    end

    add_foreign_key :appointments, :patients
    add_foreign_key :appointments, :treatments

    create_table :exams do |t|
      t.string :file
      t.datetime :added_time

      t.references :treatment, index: true
    end

    add_foreign_key :exams, :treatments, column: :treatment_id

    create_table :evolutions do |t|
      t.text :description
      t.datetime :attend_at
      t.string :teacher_name
      t.string :student_name
      t.references :appointment, index: true

      t.timestamps null: false
    end

    add_foreign_key :evolutions, :appointments, column: :appointment_id

    create_table :teeth do |t|
      t.integer :quarter
      t.integer :position
      t.integer :full
    end

    add_index :teeth, :full, unique: true

    create_table :evolutions_teeth, id: false do |t|
      t.integer :evolution_id
      t.integer :teeth_id
    end

    add_index :evolutions_teeth, [:evolution_id, :teeth_id], unique: true
  end
end

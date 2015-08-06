class CreateSchema < ActiveRecord::Migration
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
    create_table :basic_treatments do |t|
      t.string :description
      t.boolean :common
    end
    create_table :treatments do |t|
      t.references :basic_treatment, index: true
      t.references :patient, index: true

      t.timestamps null: false
    end

    create_table :basic_questions do |t|
      t.integer :parent_id, null: true, index: true
      t.integer :lft, null: false, index: true
      t.integer :rgt, null: false, index: true
      t.string :description
      t.integer :kind, index: true
    end

    create_table :historical_questions do |t|
      t.references :basic_question, index: true
      t.references :patient, index: true

      t.timestamps null: false
    end

    add_foreign_key :treatments, :basic_treatments
    add_foreign_key :historical_questions, :basic_questions

    add_foreign_key :treatments, :patients
    add_foreign_key :historical_questions, :patients

    add_index :treatments, [:basic_treatment_id, :patient_id], unique: true
    add_index :historical_questions, [:basic_question_id, :patient_id], unique: true
  end
end

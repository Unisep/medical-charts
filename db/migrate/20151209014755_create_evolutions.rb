class CreateEvolutions < ActiveRecord::Migration
  def change
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

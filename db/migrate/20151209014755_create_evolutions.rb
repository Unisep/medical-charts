class CreateEvolutions < ActiveRecord::Migration
  def change
    create_table :evolutions do |t|
      t.text :description
      t.datetime :attend_at
      t.string :teacher_name
      t.string :student_name
      t.references :appointment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

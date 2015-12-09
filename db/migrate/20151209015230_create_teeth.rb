class CreateTeeth < ActiveRecord::Migration
  def change
    create_table :teeth do |t|
      t.integer :quarter
      t.integer :position
      t.integer :full

      t.timestamps null: false
    end
  end
end

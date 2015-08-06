class CreateAnswersSchema < ActiveRecord::Migration
  def change
    create_table :answer_text_fields do |t|
      t.string :description
      t.references :basic_question, index: true
    end

    create_table :answer_check_boxes do |t|
      t.string :description
      t.boolean :checked
      t.references :basic_question, index: true
    end

    create_table :answer_radio_buttons do |t|
      t.string :description
      t.boolean :checked
      t.references :basic_question, index: true
    end

    create_table :answer_switch_buttons do |t|
      t.string :on
      t.string :off
      t.boolean :checked
      t.references :basic_question, index: true
    end

    add_foreign_key :answer_switch_buttons, :basic_questions
    add_foreign_key :answer_radio_buttons, :basic_questions
    add_foreign_key :answer_check_boxes, :basic_questions
    add_foreign_key :answer_text_fields, :basic_questions
  end
end

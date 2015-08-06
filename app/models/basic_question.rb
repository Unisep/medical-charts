class BasicQuestion < ActiveRecord::Base
  has_many :historical_questions
  has_many :check_boxes, class_name: 'Answer::CheckBox'
  has_many :radio_buttons, class_name: 'Answer::RadioButton'

  has_one :text_field, class_name: 'Answer::TextField'
  has_one :switch_button, class_name: 'Answer::SwitchButton'

  acts_as_nested_set

  has_enumeration_for :kind, with: AnswerKind

  def to_s
    description
  end
end

class AnswerKind < EnumerateIt::Base
  associate_values check_box: 1, radio_button: 2, switch_button: 3, text_field: 4
end

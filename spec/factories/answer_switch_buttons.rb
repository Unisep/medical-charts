FactoryGirl.define do
  factory :answer_switch_button, :class => 'Answer::SwitchButton' do
    on "MyString"
off "MyString"
checked false
basic_question nil
  end

end

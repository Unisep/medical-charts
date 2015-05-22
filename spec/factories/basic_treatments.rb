FactoryGirl.define do
  factory :basic_treatment, class: 'Admin::BasicTreatment' do
    description { Forgery('lorem_ipsum').words 3 }
    common { Forgery('basic').boolean }
  end
end

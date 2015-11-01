FactoryGirl.define do
  factory :patient do
    name { Forgery('name').full_name }
    profile_image { Forgery('name').full_name }
    email { Forgery('email').address }
    address { Forgery('address').street_address }
    state { Forgery('address').state }
    city { Forgery('address').city }
    zip_code { Forgery('address').zip }
    district { Forgery('address').street_suffix }
    number { Forgery('address').street_number }
    phone { Forgery('address').phone }
    cellphone { Forgery('address').phone }

    factory :patient_with_treatments do
      after(:create) do |patient|
        create(:treatment, patient: patient)
      end
    end
  end

  factory :invalid_patient, parent: :patient do
    name nil
    profile_image nil
    email nil
    address nil
    state nil
    city nil
    zip_code nil
    district nil
    number nil
    phone nil
    cellphone nil
  end
end

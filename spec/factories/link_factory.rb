FactoryGirl.define do
  factory :link do
    original "google.com"
    sequence :code do |n|
      "aaa#{n}"
    end
  end
end
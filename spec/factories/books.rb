# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
    name "MyString"
    number_of_pages 1
    cost 1.5
    author "MyString"
    stock 1
  end
end

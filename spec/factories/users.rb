FactoryBot.define do
  factory :user do
    email { 'MyString@mystring.string' }
    password { 'MyString1234567890' }
    role { 0 }
  end
end

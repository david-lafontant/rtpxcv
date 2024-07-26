FactoryBot.define do
  factory :article do
    title { 'MyString' }
    slug { 'MyString' }
    body { 'MyText' }
    published { false }
  end
end

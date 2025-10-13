FactoryBot.define do
  factory :article do
    title { 'Hello World' }
    subtitle { 'An introduction to programming languages' }
    association :author
    year { 1994 }
    body { 'lorem ipsum gravitas lux lumina' }
  end
end

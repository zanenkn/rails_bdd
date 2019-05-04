FactoryBot.define do
  factory :comment do
    commenter { "MyString" }
    email { "MyString" }
    body { "MyText" }
    article { "" }
  end
end

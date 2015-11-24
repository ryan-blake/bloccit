include RandomData

FactoryGirl.define do
  factory :label do
    name RandomData.random_name
    labelings
    topics
    posts
  end
end

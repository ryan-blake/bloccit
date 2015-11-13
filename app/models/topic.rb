class Topic < ActiveRecord::Base
  has_many :posts

it { should validate_presence_of(:title) }
it { should validate_presence_of(:body) }

it { should validate_length_of(:title).is_at_least(5) }
it { should validate_length_of(:body).is_at_least(15) }

end

class Topic < ActiveRecord::Base
  has_many :posts
  has_many :SponsoredPost
end

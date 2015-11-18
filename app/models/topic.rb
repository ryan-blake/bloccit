class Topic < ActiveRecord::Base
  has_many :posts

  has_many :labelings, as: :lablelable
  has_many :labels, through: :labelings
end

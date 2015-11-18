class Rating < ActiveRecord::Base
  enum severity: [ :PG, :PG13, :R]
  END

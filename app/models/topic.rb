# == Schema Information
#
# Table name: topics
#
#  id          :integer          not null, primary key
#  name        :string
#  public      :boolean          default(TRUE)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Topic < ActiveRecord::Base
  has_many :posts
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings

  scope :publically_viewable, -> { where(public: true) }
  scope :privately_viewable, -> { where(public: false) }

scope :visible_to, -> (user) { user ? all: publically_viewable }
end

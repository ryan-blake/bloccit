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

  validates :name, presence: true, length: {minimum: 5}
  validates :description, presence: true, length: {minimum: 15}

end

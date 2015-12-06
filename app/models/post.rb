# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  topic_id   :integer
#  user_id    :integer
#  rank       :float
#

class Post < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings
  default_scope { order('rank DESC') }
  scope :visible_to, -> (user) { user ? all : joins(:topic).where('topics.public' => true) }

  after_create :create_vote

  validates :title, length: { minimum: 5 }, presence: true
  validates :body, length: { minimum: 20 }, presence: true
  validates :topic, presence: true
  validates :user, presence: true

  def up_votes
    # #9
    votes.where(value: 1).count
  end

  def down_votes
    # #10
    votes.where(value: -1).count
  end

  def points
    # #11
    votes.sum(:value)
  end

  def update_rank
    age_in_days = (created_at - Time.new(1970,1,1)) / 1.day.seconds
    new_rank = points + age_in_days
    update_attributes(rank: new_rank)
  end

  private
  def create_vote
    user.votes.create!(value: 1, post: self)
  end
end

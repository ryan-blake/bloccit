# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  post_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'
include RandomData


RSpec.describe Comment, type: :model do
  describe "attributse" do
  let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }
  let(:post) { topic.posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph) }
  let(:comment) { Comment.create!(body: 'Comment Body', post: post) }

    it "should respond to body" do
      expect(comment).to respond_to(:body)

    end
  end

end

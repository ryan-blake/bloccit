require 'rails_helper'
include RandomData

# The migration is written in Ruby. The migration file is actually a class named CreatePosts. When we run the migration, the change method calls the create_table method. create_table takes block which specifies the attributes we want our table to possess.

RSpec.describe Post, type: :model do

  let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }
  let(:post) { topic.posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph) }

  it { should belong_to(:topic) }

  describe "attributes" do
    it "should respond to title" do
      expect(post).to respond_to(:title)
    end

    it "should respond to body" do
      expect(post).to respond_to(:body)
    end
  end
end

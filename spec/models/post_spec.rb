require 'rails_helper'

# The migration is written in Ruby. The migration file is actually a class named CreatePosts. When we run the migration, the change method calls the create_table method. create_table takes block which specifies the attributes we want our table to possess.

RSpec.describe Post, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"


let(:post) { Post.create!(title: "New Post Title", body: "New Post Body")}

describe "Attributes" do

  it "should respond to title" do
    expect(post).to respond_to(:title)
  end

  it "should respond to body" do
    expect(post).to respond_to(:body)
  end
end

end

require 'rails_helper'


RSpec.describe SponsoredPost, type: :model do
  let (:my_topic) { Topic.create!(name:  RandomData.random_sentence, description: RandomData.random_paragraph) }
  # #13


  it "should respond to title" do
    expect(sponsoredpost).to respond_to(:title)
  end
  it "should respond to body" do
    expect(sponsoredpost).to respond_to(:body)
  end
  it "should respond to price" do
    expect(sponsoredpost).to respond_to(:price)
  end
end

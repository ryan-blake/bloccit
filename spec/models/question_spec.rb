# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  resolved   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:topic) { create(:topic) }
  let(:user) { create(:user) }
  let(:post) { create(:post) }

  let(:question) { Question.new(title: "New Question Title", body: "New Question Body", resolved: false)}


  it "should respond to title" do
    expect(question).to respond_to(:title)
  end
  it "should respond to body" do
    expect(question).to respond_to(:body)
  end
  it "should respond to resolved" do
    expect(question).to respond_to(:resolved)
  end
end

# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  body        :text
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.new(title: "New Question Title", body: "New Question Body",resolved: false)}
  let(:answer) { Answer.new(Question: question, body: "New Answer Body") }
#capital 'Question' passes.. when 'question' fails rspec. answer vid. has the latter.
    it "should respond to body" do
      expect(answer).to respond_to(:body)
    end
end

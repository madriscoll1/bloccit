require 'rails_helper'

RSpec.describe Answer, type: :model do
   let(:question) { Question.create!(title: "New Question Title", body: "New Question Body") }
   let(:answer) { Answer.create!(body: 'Answer Body', question: question) }

   it "reponds to body" do
      expect(answer).to respond_to(:body)
   end
end

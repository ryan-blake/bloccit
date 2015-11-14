require 'rails_helper'
include RandomData

RSpec.describe QuestionController, type: :controller do

  let (:my_question) { Question.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph) }

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    it "assigns [my_question] to @queastions" do
      get :index

      expect(assigns(:questions)).to eq([my_question])
    end
  end



    describe "GET show" do
      it "returns http success" do
        # #16
        get :show, {id: my_question.id}
        expect(response).to have_http_status(:success)
      end
      it "renders the #show view" do
        # #17
        get :show, {id: my_question.id}
        expect(response).to render_template :show
      end

      it "assigns my_post to @question" do
        get :show, {id: my_question.id}
        # #18
        expect(assigns(:question)).to eq(my_question)
      end
    end


    describe "GET edit" do
      it "returns http success" do
        get :edit, {id: my_question.id}
        expect(response).to have_http_status(:success)
      end

      it "renders the #edit view" do
        get :edit, {id: my_question.id}
        # #1
        expect(response).to render_template :edit
      end

      # #2
      it "assigns question to be updated to @question" do
        get :edit, {id: my_question.id}

        question_instance = assigns(:question)

        expect(question_instance.id).to eq my_question.id
        expect(question_instance.title).to eq my_question.id.title
        expect(question_instance.body).to eq my_question.id.body
      end
    end


  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

    # #2
    it "renders the #new view" do
      get :new
      expect(response).to render_template :new
    end

    it "instantiates @question" do
      get :new
      expect(assigns(:question)).not_to be_nil
    end
  end




  describe "DELETE destroy" do
   it "deletes the question" do
     delete :destroy, {id: my_question.id}
# #6
     count = Question.where({id: my_question.id}).size
     expect(count).to eq 0
   end

   it "redirects to questions index" do
     delete :destroy, {id: my_question.id}
# #7
     expect(response).to redirect_to questions_path
   end
 end
end

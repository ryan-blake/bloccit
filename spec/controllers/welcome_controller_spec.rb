require 'rails_helper'

#what's happening with the :type => :controller hash rocket

RSpec.describe WelcomeController, :type => :controller do
  describe "GET index" do
    it "renders the index template" do
# #2
      get :index
# #3
      expect(response).to render_template("index")
    end
  end

 describe "GET faq" do
   it "renders the faq page" do
     get :faq
     expect(response).to render_template("faq")
   end
  end


  describe "GET about" do
    it "renders the about template" do
      get :about
      expect(response).to render_template("about")
    end
  end
end

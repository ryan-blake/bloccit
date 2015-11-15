require 'rails_helper'
include RandomData

RSpec.describe SponsoredPostController, type: :controller do
  let (:my_topic) { Topic.create!(name:  RandomData.random_sentence, description: RandomData.random_paragraph) }

  let(:my_sponsoredpost) { my_topic.sponsoredposts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, price: 5) }


  describe "GET edit" do
    it "returns http success" do
      # #25
      get :edit, topic_id: my_topic.id, id: my_sponsoredpost.id
      expect(response).to have_http_status(:success)
    end

    it "renders the #edit view" do
      # #26
      get :edit, topic_id: my_topic.id, id: my_sponsoredpost.id
      expect(response).to render_template :edit
    end

    it "assigns post to be updated to @post" do
      # #27
      get :edit, topic_id: my_topic.id, id: my_sponsoredpost.id
      post_instance = assigns(:sponsoredpost)

      expect(sponsoredpost_instance.id).to eq my_sponsoredpost.id
      expect(sponsoredpost_instance.title).to eq my_sponsoredpost.title
      expect(sponsoredpost_instance.body).to eq my_sponsoredpost.body
    end
  end
  ######


  describe "GET new"
  it "returns http success" do
    # #18
    get :new, topic_id: my_topic.id
    expect(response).to have_http_status(:success)
  end

  it "renders the #new view" do
    # #19
    get :new, topic_id: my_topic.id
    expect(response).to render_template :new
  end

  it "initializes @post" do
    # #20
    get :new, topic_id: my_topic.id
    expect(assigns(:sponsoredpost)).not_to be_nil
  end
end



describe "GET show" do
  it "returns http success" do

    get :show, topic_id: my_topic.id, id: my_post.id
    expect(response).to have_http_status(:success)
  end

  it "renders the #show view" do
    # #16
    get :show, topic_id: my_topic.id, id: my_sponsoredpost.id
    expect(response).to render_template :show
  end

  it "assigns my_sponsoredpost to @sponsoredpost" do
    # #17
    get :show, topic_id: my_topic.id, id: my_sponsoredpost.id
    expect(assigns(:sponsoredpost)).to eq(my_sponsoredpost)
  end
end

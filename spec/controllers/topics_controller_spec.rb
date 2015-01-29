require 'rails_helper'

describe TopicsController do

  # This should return the minimal set of attributes required to create a valid
  # Topic. As you add validations to Topic, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {title: 'Topic A', description: 'Topic Text'} }

  let(:invalid_attributes) { {title: nil} }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TopicsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  before :each do
    @profile = Profile.create(name: 'Jane Smith')
  end

  describe "GET show" do
    it "assigns the requested topic as @topic" do
      topic = @profile.topics.create! valid_attributes
      get :show, {:profile_id => @profile.id, :id => topic.to_param}, valid_session
      expect(assigns(:topic)).to eq(topic)
    end
  end

  describe "GET new" do
    it "assigns a new topic as @topic" do
      get :new, {}, valid_session
      expect(assigns(:topic)).to be_a_new(Topic)
    end
  end

  describe "GET edit" do
    it "assigns the requested topic as @topic" do
      topic = @profile.topics.create! valid_attributes
      get :edit, {:id => topic.to_param}, valid_session
      expect(assigns(:topic)).to eq(topic)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Topic" do
        expect {
          post :create, {:topic => valid_attributes}, valid_session
        }.to change(Topic, :count).by(1)
      end

      it "assigns a newly created topic as @topic" do
        post :create, {:topic => valid_attributes}, valid_session
        expect(assigns(:topic)).to be_a(Topic)
        expect(assigns(:topic)).to be_persisted
      end

      it "redirects to the created topic" do
        post :create, {:topic => valid_attributes}, valid_session
        expect(response).to redirect_to(Topic.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved topic as @topic" do
        post :create, {:topic => invalid_attributes}, valid_session
        expect(assigns(:topic)).to be_a_new(Topic)
      end

      it "re-renders the 'new' template" do
        post :create, {:topic => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end

  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) { { location: 'here' } }

      it "updates the requested topic" do
        topic = Topic.create! valid_attributes
        put :update, {:id => topic.to_param, :topic => new_attributes}, valid_session
        topic.reload
        expect(topic.location).to eq 'here'
      end

      it "assigns the requested topic as @topic" do
        topic = Topic.create! valid_attributes
        put :update, {:id => topic.to_param, :topic => valid_attributes}, valid_session
        expect(assigns(:topic)).to eq(topic)
      end

      it "redirects to the topic" do
        topic = Topic.create! valid_attributes
        put :update, {:id => topic.to_param, :topic => valid_attributes}, valid_session
        expect(response).to redirect_to(topic)
      end
    end

    describe "with invalid params" do
      it "assigns the topic as @topic" do
        topic = Topic.create! valid_attributes
        put :update, {:id => topic.to_param, :topic => invalid_attributes}, valid_session
        expect(assigns(:topic)).to eq(topic)
      end

      it "re-renders the 'edit' template" do
        topic = Topic.create! valid_attributes
        put :update, {:id => topic.to_param, :topic => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested topic" do
      topic = Topic.create! valid_attributes
      expect {
        delete :destroy, {:id => topic.to_param}, valid_session
      }.to change(Topic, :count).by(-1)
    end

    it "redirects to the topics list" do
      topic = Topic.create! valid_attributes
      delete :destroy, {:id => topic.to_param}, valid_session
      expect(response).to redirect_to(topics_url)
    end
  end

end

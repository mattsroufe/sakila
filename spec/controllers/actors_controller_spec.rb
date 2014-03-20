require 'spec_helper'

describe ActorsController do

  describe "#index" do
    it "renders the index view" do
      get :index
      expect(response).to render_template('index')
    end

    it "assigns all actors to @actors" do
      get :index
      expect(assigns(:actors)).to match_array(Actor.all)
    end
  end

  describe "#show" do
    let(:actor) { Actor.create(first_name: "Matt", last_name: "Sroufe") }

    it "renders the show view" do
      get :show, :id => actor
      expect(response).to render_template('show')
    end

    it "assigns the actor as @actor" do
      get :show, :id => actor
      expect(assigns[:actor]).to eq(actor)
    end
  end
end

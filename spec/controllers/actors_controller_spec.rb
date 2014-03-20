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
end

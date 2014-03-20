require 'spec_helper'

describe FilmsController do
  let!(:film) { FactoryGirl.create(:film) }

  describe "#index" do
    it "renders the index view" do
      get :index
      expect(response).to render_template('index')
    end

    it "assigns all films to @films" do
      get :index
      expect(assigns(:films)).to eq(Film.all)
    end
  end

  describe "#show" do

    it "renders the show view" do
      get :show, :id => film
      expect(response).to render_template('show')
    end

    it "assigns the film as @film" do
      get :show, :id => film
      expect(assigns[:film]).to eq(film)
    end
  end
end

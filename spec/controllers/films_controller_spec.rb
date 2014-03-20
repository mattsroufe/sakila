require 'spec_helper'

describe FilmsController do

  describe "#show" do
    let!(:film) { FactoryGirl.create(:film) }

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

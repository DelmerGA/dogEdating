require 'spec_helper'

describe ParksController do

   before(:each) do
    @park = Park.create(name: "Narnia", address: "through the wardrobe", leash_rule: "off-leash", image: "image.jpg")
  end

  describe 'GET index' do
    it 'returns a 200 OK status' do
      @parks = Park.all
      get :index
      expect(response.status).to eq(200)
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template("index")
    end
  end

   describe 'GET new' do
    it 'returns a 200 OK status' do
      park = Park.create
      get :new
      expect(response.status).to eq(200)
    end

    it 'renders the new template' do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe 'GET show' do
    it 'returns a 200 OK status' do
      get :show, id:@park.id
      expect(response.status).to eq(200)
    end
    it 'renders the show template' do
      get :show, id:@park.id
      expect(response).to render_template("show")
    end
  end

  describe 'GET edit' do
    it 'returns a 200 OK status' do
      get :edit, id:@park.id
      expect(response.status).to eq(200)
    end
    it 'renders the edit template' do
      get :edit, id:@park.id
      expect(response).to render_template("edit")
    end
  end

end
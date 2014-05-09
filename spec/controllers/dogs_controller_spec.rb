require 'spec_helper'

describe DogsController do

  # let(:dog) { FactoryGirl.create(:dogs) }

  # before :each do
  #   ApplicationController.any_instance.stub(:current_user).and_return(dog.user)
  #   ApplicationController.any_instance.stub(:signed_in_user).and_return(nil)
  # end

  before(:each) do
    @dog = Dog.create(name: "Rusty", breed: "mix", age: "2 years", park_id: 1, user_id: 1, image: "image.jpg")
  end

  describe 'GET show' do
    it 'returns a 200 OK status' do
      get :show, id:@dog.id
      expect(response.status).to eq(200)
    end
    it 'renders the show template' do
      get :show, id:@dog.id
      expect(response).to render_template("show")
    end
  end

  describe 'GET index' do
    it 'returns a 200 OK status' do
      @dogs = Dog.all
      get :index
      expect(response.status).to eq(200)
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template("index")
    end
  end
  
  # describe 'GET new' do
  #   it 'returns a 200 OK status' do
  #     dog = Dog.create
  #     get :new
  #     expect(response.status).to eq(200)
  #   end

  #   it 'renders the new template' do
  #     get :new
  #     expect(response).to render_template("new")
  #   end
  # end

  # describe 'GET edit' do
  #   it 'returns a 200 OK status' do
  #     get :edit, id:@dog.id
  #     expect(response.status).to eq(200)
  #   end
  #   it 'renders the edit template' do
  #     get :edit, id:@dog.id
  #     expect(response).to render_template("edit")
  #   end
  # end

end
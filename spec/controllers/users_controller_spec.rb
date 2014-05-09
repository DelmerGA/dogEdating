require 'spec_helper'

describe UsersController do

  before(:each) do
    @user = User.create(name: "my name", email: "blair@blair.com", password: "password", password_confirmation: "password")
  end

  describe 'GET new' do
    it 'returns a 200 OK status' do
      user = User.create
      get :new
      expect(response.status).to eq(200)
    end

    it 'renders the new template' do
      get :new
      expect(response).to render_template("new")
    end
  end
end
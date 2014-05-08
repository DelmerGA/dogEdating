require 'spec_helper'

describe UsersController do

  before(:each) do
    @user = User.create(name: "http://www.google.com", email: "ABCDEF")
  end
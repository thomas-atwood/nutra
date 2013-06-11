require 'spec_helper'

describe SocialController do

  describe "GET 'parents'" do
    it "returns http success" do
      get 'parents'
      response.should be_success
    end
  end

  describe "GET 'newsletter'" do
    it "returns http success" do
      get 'newsletter'
      response.should be_success
    end
  end

  describe "GET 'story'" do
    it "returns http success" do
      get 'story'
      response.should be_success
    end
  end

  describe "GET 'friends'" do
    it "returns http success" do
      get 'friends'
      response.should be_success
    end
  end

  describe "GET 'suggestions'" do
    it "returns http success" do
      get 'suggestions'
      response.should be_success
    end
  end

end

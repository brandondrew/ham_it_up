require 'rails_helper'

RSpec.describe "Pools", :type => :request do
  describe "GET /pools" do
    it "works! (now write some real specs)" do
      get pools_path
      expect(response).to have_http_status(200)
    end
  end
end

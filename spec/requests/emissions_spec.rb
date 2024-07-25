require 'rails_helper'

RSpec.describe "Emissions", type: :request do
  describe "GET /emissions" do
    it "works! (now write some real specs)" do
      get emissions_path
      expect(response).to have_http_status(200)
    end
  end
end

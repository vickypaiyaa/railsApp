require 'rails_helper'

RSpec.describe "RecipeCruds", type: :request do
  describe "GET /recipe_cruds" do
    it "works! (now write some real specs)" do
      get recipe_cruds_path
      expect(response).to have_http_status(200)
    end
  end
end

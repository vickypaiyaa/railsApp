require "rails_helper"

RSpec.describe RecipeCrudsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/recipe_cruds").to route_to("recipe_cruds#index")
    end

    it "routes to #new" do
      expect(:get => "/recipe_cruds/new").to route_to("recipe_cruds#new")
    end

    it "routes to #show" do
      expect(:get => "/recipe_cruds/1").to route_to("recipe_cruds#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/recipe_cruds/1/edit").to route_to("recipe_cruds#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/recipe_cruds").to route_to("recipe_cruds#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/recipe_cruds/1").to route_to("recipe_cruds#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/recipe_cruds/1").to route_to("recipe_cruds#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/recipe_cruds/1").to route_to("recipe_cruds#destroy", :id => "1")
    end

  end
end

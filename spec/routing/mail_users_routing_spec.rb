require "rails_helper"

RSpec.describe MailUsersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mail_users").to route_to("mail_users#index")
    end

    it "routes to #new" do
      expect(:get => "/mail_users/new").to route_to("mail_users#new")
    end

    it "routes to #show" do
      expect(:get => "/mail_users/1").to route_to("mail_users#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mail_users/1/edit").to route_to("mail_users#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/mail_users").to route_to("mail_users#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/mail_users/1").to route_to("mail_users#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/mail_users/1").to route_to("mail_users#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mail_users/1").to route_to("mail_users#destroy", :id => "1")
    end

  end
end

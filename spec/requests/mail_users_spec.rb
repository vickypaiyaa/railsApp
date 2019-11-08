require 'rails_helper'

RSpec.describe "MailUsers", type: :request do
  describe "GET /mail_users" do
    it "works! (now write some real specs)" do
      get mail_users_path
      expect(response).to have_http_status(200)
    end
  end
end

require 'rails_helper'

RSpec.describe "mail_users/index", type: :view do
  before(:each) do
    assign(:mail_users, [
      MailUser.create!(
        :name => "Name",
        :email => "Email",
        :login => "Login"
      ),
      MailUser.create!(
        :name => "Name",
        :email => "Email",
        :login => "Login"
      )
    ])
  end

  it "renders a list of mail_users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Login".to_s, :count => 2
  end
end

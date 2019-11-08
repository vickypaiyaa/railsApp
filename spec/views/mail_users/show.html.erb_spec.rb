require 'rails_helper'

RSpec.describe "mail_users/show", type: :view do
  before(:each) do
    @mail_user = assign(:mail_user, MailUser.create!(
      :name => "Name",
      :email => "Email",
      :login => "Login"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Login/)
  end
end

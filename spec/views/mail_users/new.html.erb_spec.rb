require 'rails_helper'

RSpec.describe "mail_users/new", type: :view do
  before(:each) do
    assign(:mail_user, MailUser.new(
      :name => "MyString",
      :email => "MyString",
      :login => "MyString"
    ))
  end

  it "renders new mail_user form" do
    render

    assert_select "form[action=?][method=?]", mail_users_path, "post" do

      assert_select "input#mail_user_name[name=?]", "mail_user[name]"

      assert_select "input#mail_user_email[name=?]", "mail_user[email]"

      assert_select "input#mail_user_login[name=?]", "mail_user[login]"
    end
  end
end

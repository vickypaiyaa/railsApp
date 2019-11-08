require 'rails_helper'

RSpec.describe "mail_users/edit", type: :view do
  before(:each) do
    @mail_user = assign(:mail_user, MailUser.create!(
      :name => "MyString",
      :email => "MyString",
      :login => "MyString"
    ))
  end

  it "renders the edit mail_user form" do
    render

    assert_select "form[action=?][method=?]", mail_user_path(@mail_user), "post" do

      assert_select "input#mail_user_name[name=?]", "mail_user[name]"

      assert_select "input#mail_user_email[name=?]", "mail_user[email]"

      assert_select "input#mail_user_login[name=?]", "mail_user[login]"
    end
  end
end

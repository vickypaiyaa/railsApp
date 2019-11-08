require 'rails_helper'

RSpec.describe "recipe_cruds/new", type: :view do
  before(:each) do
    assign(:recipe_crud, RecipeCrud.new())
  end

  it "renders new recipe_crud form" do
    render

    assert_select "form[action=?][method=?]", recipe_cruds_path, "post" do
    end
  end
end

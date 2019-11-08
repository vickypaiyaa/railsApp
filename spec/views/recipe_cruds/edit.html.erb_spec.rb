require 'rails_helper'

RSpec.describe "recipe_cruds/edit", type: :view do
  before(:each) do
    @recipe_crud = assign(:recipe_crud, RecipeCrud.create!())
  end

  it "renders the edit recipe_crud form" do
    render

    assert_select "form[action=?][method=?]", recipe_crud_path(@recipe_crud), "post" do
    end
  end
end

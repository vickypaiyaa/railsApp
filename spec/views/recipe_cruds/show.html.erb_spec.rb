require 'rails_helper'

RSpec.describe "recipe_cruds/show", type: :view do
  before(:each) do
    @recipe_crud = assign(:recipe_crud, RecipeCrud.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

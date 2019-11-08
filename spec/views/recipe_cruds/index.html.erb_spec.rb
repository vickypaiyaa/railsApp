require 'rails_helper'

RSpec.describe "recipe_cruds/index", type: :view do
  before(:each) do
    assign(:recipe_cruds, [
      RecipeCrud.create!(),
      RecipeCrud.create!()
    ])
  end

  it "renders a list of recipe_cruds" do
    render
  end
end

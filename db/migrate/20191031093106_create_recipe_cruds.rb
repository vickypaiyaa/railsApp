class CreateRecipeCruds < ActiveRecord::Migration
  def change
    create_table :recipe_cruds do |t|

      t.timestamps
    end
  end
end

class CreateRailsResumes < ActiveRecord::Migration
  def change
    create_table :rails_resumes do |t|
      t.string :name
      t.string :attachment

      t.timestamps
    end
  end
end

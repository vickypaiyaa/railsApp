class RailsSubjects < ActiveRecord::Migration
   def self.up
      
      create_table :rails_subjects do |t|
         t.column :name, :string
      end

   end

   def self.down
      drop_table :rails_subjects
   end
end

class RailsBook < ActiveRecord::Base
	belongs_to :rails_subject, :foreign_key =>'subject_id'
end
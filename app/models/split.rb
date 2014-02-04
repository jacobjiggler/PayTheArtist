class Split < ActiveRecord::Base
	has_many :artists
	accepts_nested_attributes_for :artists, :allow_destroy => true
end

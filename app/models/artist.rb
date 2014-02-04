class Artist < ActiveRecord::Base
	belongs_to :split
	has_many :amounts, :dependent => :destroy
	accepts_nested_attributes_for :amounts, :allow_destroy => true
end

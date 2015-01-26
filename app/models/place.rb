class Place < ActiveRecord::Base
	max_paginates_per 5	

belongs_to :user
has_many :comments

validates :name, :presence => true, length: { minimum: 3 } 
validates :address, :presence => true
validates :description, :presence => true

geocoded_by :address
after_validation :geocode

end

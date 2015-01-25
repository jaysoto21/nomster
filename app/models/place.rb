class Place < ActiveRecord::Base
	max_paginates_per 5	

belongs_to :user 

end

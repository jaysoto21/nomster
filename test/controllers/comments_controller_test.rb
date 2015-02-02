require 'test_helper'

class CommentsControllerTest < ActionController::TestCase

	test 'creating a comment' do 
		user = FactoryGirl.create(:user)
		sign_in user
		place = FactoryGirl.create(:place, :user => user)

		assert_difference 'place.comments.count' do
		
			post :create, :place_id => place.id, :comment => {
				  	:message => 'Testing',
  					:rating => '1_star'
  				}
		end 
			
		assert_redirected_to place_path(place)
		assert_equal 1, place.comments.count
		end
end


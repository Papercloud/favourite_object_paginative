require 'spec_helper'

describe FavouriteObject::FavouritesController do

	it "override paginates" do
		get :index, format: :json
	end
end
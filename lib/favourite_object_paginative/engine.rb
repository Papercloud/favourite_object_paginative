require 'favourite_object'
require 'paginative'

module FavouriteObjectPaginative
  class Engine < ::Rails::Engine
  	config.generators do |g|
  	  g.test_framework      :rspec,        :fixture => false
  	  g.fixture_replacement :factory_girl, :dir => 'spec/factories'
  	  g.assets false
  	  g.helper false
  	end

    initializer "favourite_object_paginative.override" do
      FavouriteObjectPaginative.override
    end
  end
end

require "favourite_object_paginative/engine"

module FavouriteObjectPaginative
  def self.override
    FavouriteObject::Favourite.class_eval do
      include Paginative::ModelExtension
    end
  end
end


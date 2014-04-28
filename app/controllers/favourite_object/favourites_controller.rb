class FavouriteObject::FavouritesController < FavouriteObject::BaseFavouritesController

	def collection_pagination
		limit_per_page = params[:per_page] || 25
		@total_count = @favourites.count

		if params[:from]
		  @favourites = @favourites.with_field_from(params[:from][:field], params[:from][:value])
		else
		  @favourites = @favourites.limit(limit_per_page)
		end
	end

	def respond_to_method
		respond_to do |format|
		  format.html
		  format.json {render :json => @favourites, 
		  	meta: { 
		  		pagination: { total_objects: @total_count} 
		  	}
		  }
		end
	end
end
= FavouriteObjectPaginative

At the moment requires this to be added to your favourite_object.rb initializer

```
FavouriteObject::Favourite.class_eval do
  include Paginative::ModelExtension
end
```

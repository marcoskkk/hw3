class PlacesController < ApplicationController
    def index
        @places = Place.all
      end
    
      def show
        # .find(123) is the same as .where({ id: 123 })[0]
        @place = Place.find(params["id"])
      end
    
      def new
        @place = Place.new
      end
    
      def create
        @place = Place.new(params[:place])
        @place.save
        redirect_to "/"
      end
end

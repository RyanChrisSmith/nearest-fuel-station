class SearchController < ApplicationController
  def index
    @station = StationFacade.closest_station(params[:location])
    @directions = DirectionsFacade.get_directions(params[:location], @station.lat, @station.long)
  end
end

class MapController < ApplicationController
  def index
    @maps = Map.all
    @hash = Gmaps4rails.build_markers(@maps) do |map, marker|
      marker.lat map.latitude
      marker.lng map.longitude
      marker.infowindow map.description
      marker.json({title: map.title})
    end
  end
end

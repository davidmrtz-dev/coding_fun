module Implementation
  def connected_routes(routes)
    destinations = {}
    routes.each do |origin, destination|
      destinations[origin] = destination
    end

    start = (destinations.keys - destinations.values).first

    connected_routes = [start]
    while destinations[connected_routes.last]
      connected_routes << destinations[connected_routes.last]
    end

    connected_routes
  end
end


{"SFO"=>"EWR", "SJC"=>"LAX", "DFW"=>"SJC", "EWR"=>"OAK", "LAX"=>"SFO"}
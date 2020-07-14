class SearchController < ApplicationController
  def index
    # conn = Faraday.new("https://last-airbender-api.herokuapp.com/")
    # response = conn.get("/api/v1/characters")
    # parsed_response = JSON.parse(response.body, symbolize_names: true)
    conn = Faraday.new("https://last-airbender-api.herokuapp.com/")
    response = conn.get("/api/v1/characters?affiliation=#{params["Fire Nation"]}")
    parsed_response = JSON.parse(response.body, symbolize_names: true)
    # require "pry binding.pry

    @members = parsed_response
    require "pry"; binding.pry
  end
end

class SearchController < ApplicationController
  def index
    # conn = Faraday.new("https://last-airbender-api.herokuapp.com/")
    # response = conn.get("/api/v1/characters")
    # parsed_response = JSON.parse(response.body, symbolize_names: true)
    conn = Faraday.new("https://last-airbender-api.herokuapp.com/")
    response = conn.get("/api/v1/characters?affiliation=#{params[:nation]}")
    parsed_response = JSON.parse(response.body, symbolize_names: true)
    # require "pry binding.pry

    @members = parsed_response
    @nation = params[:nation]
  end
end

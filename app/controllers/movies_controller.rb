class MoviesController < ApplicationController
  def index
    require 'open-uri'
    @movies = JSON.parse(open("https://yts.am/api/v2/list_movies.json?sort_by=rating").read)["data"]["movies"]
  end
end

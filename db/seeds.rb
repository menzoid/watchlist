# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

url = 'http://tmdb.lewagon.com/movie/top_rated?api_key=<your_api_key>'

data = URI.open(url).read
result = JSON.parse(data)

results_only = result['results']
poster_prefix = 'https://image.tmdb.org/t/p/w500'
results_only.each do |movie|
  poster_path = movie['poster_path']
  Movie.create!(
    title: movie['title'],
    overview: movie['overview'],
    poster_url: "#{poster_prefix}#{poster_path}",
    rating: movie['vote_average'].to_f
  )
end

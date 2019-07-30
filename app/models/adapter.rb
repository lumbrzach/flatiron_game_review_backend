class Adapter < ApplicationRecord
    require 'net/https'

    def call
        puts 'this is where we are going to attempt to make a connection  to our api.'
        http = Net::HTTP.new('api-v3.igdb.com',443)
        http.use_ssl = true
        request = Net::HTTP::Post.new(URI('https://api-v3.igdb.com/games'), {'user-key' => '3d99d72196535725bfa111c9bf34c845'})
        request.body = 'fields age_ratings,aggregated_rating,aggregated_rating_count,alternative_names,artworks,bundles,category,collection,cover,created_at,dlcs,expansions,external_games,first_release_date,follows,franchise,franchises,game_engines,game_modes,genres,hypes,involved_companies,keywords,multiplayer_modes,name,parent_game,platforms,player_perspectives,popularity,pulse_count,rating,rating_count,release_dates,screenshots,similar_games,slug,standalone_expansions,status,storyline,summary,tags,themes,time_to_beat,total_rating,total_rating_count,updated_at,url,version_parent,version_title,videos,websites;'
        puts http.request(request).body
        
        Game.create({})
        byebug
    end
end

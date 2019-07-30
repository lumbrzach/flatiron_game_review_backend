class Game < ApplicationRecord
    has_many :likes
    has_many :comments
    has_many :ratings
    has_many :game_platforms
    has_many :platforms, through: :game_platforms
end

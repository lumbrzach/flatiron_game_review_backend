class Game < ApplicationRecord
    has_many :likes, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :ratings, dependent: :destroy
    has_many :game_platforms, dependent: :destroy
    has_many :platforms, through: :game_platforms

    # def as_json(options={})
    #     { :comments => self.comments, :likes => self.likes, :ratings => self.ratings}
    # end
end

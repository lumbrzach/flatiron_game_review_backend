# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Platform.destroy_all
GamePlatform.destroy_all
Game.destroy_all
Like.destroy_all
Rating.destroy_all
Comment.destroy_all

xbox = Platform.create(name: "XBOX")
switch = Platform.create(name: "Nintendo Switch")
pc = Platform.create(name: "PC")

aoe = Game.create(
    title: "Age of Empires", 
    image: "https://upload.wikimedia.org/wikipedia/en/1/18/Age_of_Empires_Coverart.jpg", 
    release_date: 1997, 
    genre: "Real-time Strategy", 
    description: "Age of Empires is a series of historical real-time strategy video games, originally developed by Ensemble Studios and published by Xbox Game Studios. The first title of the series was Age of Empires, released in 1997. Seven titles and three spin-offs have been released."
)
halo = Game.create(
    title: "Halo: Combat Evolved", 
    image: "https://upload.wikimedia.org/wikipedia/en/8/80/Halo_-_Combat_Evolved_%28XBox_version_-_box_art%29.jpg", 
    release_date: 2001, 
    genre: "First-person Shooter", 
    description: "Halo: Combat Evolved is a 2001 military science fiction first-person shooter video game developed by Bungie and published by Microsoft Game Studios. It was released as a launch title for Microsoft's Xbox video game console on November 15, 2001."
)
smash_ult = Game.create(
    title: "Super Smash Bros. Ultimate", 
    image: "https://cdn02.nintendo-europe.com/media/images/11_square_images/games_18/nintendo_switch_5/SQ_NSwitch_SuperSmashBrosUltimate_02_image420w.jpg", 
    release_date: 2018, 
    genre: "Fighting",
    description: "Super Smash Bros. Ultimate is a 2018 crossover fighting game developed by Bandai Namco Studios and Sora Ltd., and published by Nintendo for the Nintendo Switch. It is the fifth installment in the Super Smash Bros. series, succeeding Super Smash Bros. for Nintendo 3DS and Wii U."
)

gp1 = GamePlatform.create(game_id: halo.id, platform_id: xbox.id)
gp2 = GamePlatform.create(game_id: aoe.id, platform_id: pc.id)
gp3 = GamePlatform.create(game_id: smash_ult.id, platform_id: switch.id)

halo_comment1 = Comment.create(content: "I miss my pistol...", game_id: halo.id)
halo_comment2 = Comment.create(content: "Did I mention that I miss my pistol", game_id: halo.id)
aoe_comment1 = Comment.create(content: "Not only was this game a gateway drug for strategy games at large, but you may walk away from it havuing learned some history.", game_id: aoe.id)

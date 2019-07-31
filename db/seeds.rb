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
mobile = Platform.create(name: "Mobile")
playstation = Platform.create(name: "Play Station")
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
nhl = Game.create(
    title: "NHL 20", 
    image: "https://s3.amazonaws.com/prod-media.gameinformer.com/styles/full/s3/2019/07/30/dfe0bc7c/nhl20_mcdavidindoor_wm_1920x1080.jpg", 
    release_date: 2019, 
    genre: "Sport",
    description: "One of the biggest features EA touted for NHL 20 is the contextual shot animations. After playing the game for a while, we can say with confidence these are a nice addition to the experience. "
)
fire = Game.create(
    title: "Fire Emblem: Three Houses", 
    image: "https://s3.amazonaws.com/prod-media.gameinformer.com/styles/full/s3/2019/07/24/8f4d0f66/switch_fethreehouses_e3_screen_11.jpg", 
    release_date: 2019, 
    genre: "Fighting",
    description: "Fire Emblem: Three Houses goes even further, providing the ability to shape and mentor allies. You play as a professor trying to guide and prepare students for the cruelty of the world; their successes and failures hit hard, and you hope you’ve imparted the right wisdom and focused your students in the right areas of study. This is how Three Houses entrenches you in the role of a mentor, inserting you directly into student life, which enhances the experience in a memorable way "
)
marvel = Game.create(
    title: "Marvel Ultimate Alliance 3: The Black Order", 
    image: "https://s3.amazonaws.com/prod-media.gameinformer.com/styles/full/s3/2019/07/18/31ef7769/marvel1.jpg", 
    release_date: 2019, 
    genre: "Fighting",
    description: "Thanos snapping his fingers to wipe out half of all life in the universe isn’t the only threat the Avengers face in Marvel Ultimate Alliance 3: The Black Order. As they race to stop the mad titan from gathering all of the Infinity Gems, their journey is periodically upended by laborious and uneventful level designs, technical issues, odd balancing, and a story that sacrifices heart and soul to continually introduce new characters and locations"
)
zelda = Game.create(
    title: "Legends of Zelda: Breath of the Wild", 
    image: "https://hb.imgix.net/30f99676956da2452efbfd3677623b62712137c2.jpg?auto=compress,format&fit=crop&h=353&w=616&s=df336875de1e1e508c0bd6c0e234b2d4",
    release_date: 2021, 
    genre: "Fighting",
    description: "Woken from a 100-year slumber, Link must explore the wilds to regain his lost memories and save Hyrule. The wilds of Hyrule make for a puzzling game of survival."
)
bird = Game.create(
    title: "Angry Bird Rio", 
    image: "https://upload.wikimedia.org/wikipedia/en/thumb/0/02/Angry_Birds_Rio.png/220px-Angry_Birds_Rio.png",
    release_date: 2015, 
    genre: "Puzzle video game ",
    description: "In Rio, the Angry Birds have been kidnapped and taken to Rio. Just as in the original Angry Birds, players use a slingshot to launch birds at nearby structures, with the intent of hitting targets located on or within them. Instead of the pigs that have stolen eggs, players must now rescue caged exotic birds or defeat Nigel's marmosets, depending on the level being played. "
)
theft = Game.create(
    title: "Grand Theft Auto IV", 
    image: "https://giantbomb1.cbsistatic.com/uploads/scale_small/9/93770/2446670-gta_1446_a023.jpg",
    release_date: 2008, 
    genre: "Fighting",
    description: "Grand Theft Auto IV is an action-adventure video game developed by Rockstar North and published by Rockstar Games. "
)
mario = Game.create(
    title: "Mario", 
    image: "https://upload.wikimedia.org/wikipedia/en/thumb/0/03/Super_Mario_Bros._box.png/220px-Super_Mario_Bros._box.png",
    release_date: 1993, 
    genre: "Fighting",
    description: "Super Mario Bros. is a platform video game developed and published by Nintendo. "
)

gp1 = GamePlatform.create(game_id: halo.id, platform_id: xbox.id)
gp2 = GamePlatform.create(game_id: aoe.id, platform_id: pc.id)
gp3 = GamePlatform.create(game_id: smash_ult.id, platform_id: switch.id)
gp4 = GamePlatform.create(game_id: nhl.id, platform_id: xbox.id)
gp5 = GamePlatform.create(game_id: fire.id, platform_id: switch.id)
gp6 = GamePlatform.create(game_id: marvel.id, platform_id: switch.id)
gp7 = GamePlatform.create(game_id: zelda.id, platform_id: switch.id)
gp8 = GamePlatform.create(game_id: bird.id, platform_id: mobile.id)
gp9 = GamePlatform.create(game_id: theft.id, platform_id: playstation.id)
gp10 = GamePlatform.create(game_id: mario.id, platform_id: switch.id)

halo_comment1 = Comment.create(content: "I miss my pistol...", game_id: halo.id)
halo_comment2 = Comment.create(content: "Did I mention that I miss my pistol", game_id: halo.id)
aoe_comment1 = Comment.create(content: "Not only was this game a gateway drug for strategy games at large, but you may walk away from it havuing learned some history.", game_id: aoe.id)
nhl_comment1 = Comment.create(content: "I've also been largely impressed with the goaltenders so far. Netminders are much more active with poke checks on breakaways, during penalty shots, and when skaters cut across the crease.", game_id: aoe.id)
fire_comment1 = Comment.create(content: "I appreciate other new elements that help avoid frustrating deaths, like a limited-use ability to rewind time that reverses mistakes without reloading.", game_id: fire.id)
marvel_comment1 = Comment.create(content: "The higher level trials reward you with new playable characters and a few costumes.")
zelda_comment1 = Comment.create(content: "I can't wait to get my hands on this game. It will be epic when it's released!")
bird_comment1 = Comment.create(content: "My child loves this game! He plays it all the time.")
theft_comment1 = Comment.create(content: "This was my childhood game, love this action game!")
mario_comment1 = Comment.create(content: "This is a classic game")
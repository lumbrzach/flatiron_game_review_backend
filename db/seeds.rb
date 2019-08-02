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

atari = Platform.create(name: "Atari")
xbox = Platform.create(name: "Xbox")
xbox360 = Platform.create(name: "Xbox 360")
xbox1 = Platform.create(name: "Xbox One")
nes = Platform.create(name: "Nintendo NES")
super_nintendo = Platform.create(name: "Super Nintendo")
n64 = Platform.create(name: "Nintendo64")
gameboy = Platform.create(name: "Nintendo GameBoy")
ds = Platform.create(name: "Nintendo DS")
gamecube = Platform.create(name: "Nintendo GameCube")
wii = Platform.create(name: "Nintendo Wii")
switch = Platform.create(name: "Nintendo Switch")
mobile = Platform.create(name: "Mobile")
playstation = Platform.create(name: "PlayStation")
ps2 = Platform.create(name: "PlayStation 2")
ps3 = Platform.create(name: "Playstation 3")
ps4 = Platform.create(name: "PlayStation 4")
psp = Platform.create(name: "PlayStation Portable")
genesis = Platform.create(name: "Sega Genesis")
gamegear = Platform.create(name: "Sega Game Gear")
dreamcast = Platform.create(name: "Sega DreamCast")
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
    genre: "RPG/ighting",
    description: "Fire Emblem: Three Houses goes even further, providing the ability to shape and mentor allies. You play as a professor trying to guide and prepare students for the cruelty of the world; their successes and failures hit hard, and you hope you’ve imparted the right wisdom and focused your students in the right areas of study. This is how Three Houses entrenches you in the role of a mentor, inserting you directly into student life, which enhances the experience in a memorable way "
)
marvel = Game.create(
    title: "Marvel Ultimate Alliance 3: The Black Order", 
    image: "https://s3.amazonaws.com/prod-media.gameinformer.com/styles/full/s3/2019/07/18/31ef7769/marvel1.jpg", 
    release_date: 2019, 
    genre: "RPG/Fighting",
    description: "Thanos snapping his fingers to wipe out half of all life in the universe isn’t the only threat the Avengers face in Marvel Ultimate Alliance 3: The Black Order. As they race to stop the mad titan from gathering all of the Infinity Gems, their journey is periodically upended by laborious and uneventful level designs, technical issues, odd balancing, and a story that sacrifices heart and soul to continually introduce new characters and locations"
)
zelda = Game.create(
    title: "Legends of Zelda: Breath of the Wild", 
    image: "https://hb.imgix.net/30f99676956da2452efbfd3677623b62712137c2.jpg?auto=compress,format&fit=crop&h=353&w=616&s=df336875de1e1e508c0bd6c0e234b2d4",
    release_date: 2021, 
    genre: "RPG/Action",
    description: "Woken from a 100-year slumber, Link must explore the wilds to regain his lost memories and save Hyrule. The wilds of Hyrule make for a puzzling game of survival."
)
bird = Game.create(
    title: "Angry Bird Rio", 
    image: "https://upload.wikimedia.org/wikipedia/en/thumb/0/02/Angry_Birds_Rio.png/220px-Angry_Birds_Rio.png",
    release_date: 2015, 
    genre: "Puzzle",
    description: "In Rio, the Angry Birds have been kidnapped and taken to Rio. Just as in the original Angry Birds, players use a slingshot to launch birds at nearby structures, with the intent of hitting targets located on or within them. Instead of the pigs that have stolen eggs, players must now rescue caged exotic birds or defeat Nigel's marmosets, depending on the level being played. "
)
theft = Game.create(
    title: "Grand Theft Auto IV", 
    image: "https://giantbomb1.cbsistatic.com/uploads/scale_small/9/93770/2446670-gta_1446_a023.jpg",
    release_date: 2008, 
    genre: "RPG/Action",
    description: "Grand Theft Auto IV is an action-adventure video game developed by Rockstar North and published by Rockstar Games. "
)
mario64 = Game.create(
    title: "Super Mario 64", 
    image: "https://webgames.host/uploads/2017/06/super-mario-64-164x164.png",
    release_date: 1996, 
    genre: "Action",
    description: "Super Mario 64 is a platform video game developed and published by Nintendo. "
)
supermariobros = Game.create(
    title: "Super Mario Bros.", 
    image: "https://upload.wikimedia.org/wikipedia/en/0/03/Super_Mario_Bros._box.png",
    release_date: 1985, 
    genre: "Action",
    description: "In Super Mario Bros., the player takes on the role of Mario, the protagonist of the series. Mario's younger brother, Luigi, is controlled by the second player in the game's multiplayer mode and assumes the same plot role and functionality as Mario. The objective is to race through the Mushroom Kingdom, survive the main antagonist Bowser's forces, and save Princess Toadstool.[3]:7 The game is a side-scrolling platformer; the player moves from the left side of the screen to the right side in order to reach the flag pole at the end of each level."
)

skyrim = Game.create(
    title: "The Elder Scrolls V: Skyrim", 
    image: "https://images.igdb.com/igdb/image/upload/t_cover_big/yakiwtuy29tu0atooopm.jpg",
    release_date: 2011, 
    genre: "RPG",
    description: "The next chapter in the highly anticipated Elder Scrolls saga arrives from the makers of the 2006 and 2008 Games of the Year, Bethesda Game Studios. Skyrim reimagines and revolutionizes the open-world fantasy epic, bringing to life a complete virtual world open for you to explore any way you choose. 

    Play any type of character you can imagine, and do whatever you want; the legendary freedom of choice, storytelling, and adventure of The Elder Scrolls is realized like never before. 
    
    Skyrim’s new game engine brings to life a complete virtual world with rolling clouds, rugged mountains, bustling cities, lush fields, and ancient dungeons. 
    
    Choose from hundreds of weapons, spells, and abilities. The new character system allows you to play any way you want and define yourself through your actions. 
    
    Battle ancient dragons like you’ve never seen. As Dragonborn, learn their secrets and harness their power for yourself."
)
modernwarfare = Game.create(
    title: "Call Of Duty: Modern Warfare", 
    image: "https://images.igdb.com/igdb/image/upload/t_cover_big/co1lpf.jpg",
    release_date: 2019, 
    genre: "Shooter",
    description: "Prepare to go dark, Modern Warfare is back! 

    The stakes have never been higher as players take on the role of lethal Tier One operators in a heart-racing saga that will affect the global balance of power. Call of Duty: Modern Warfare engulfs fans in an incredibly raw, gritty, provocative narrative that brings unrivaled intensity and shines a light on the changing nature of modern war. Developed by the studio that started it all, Infinity Ward delivers an epic reimagining of the iconic Modern Warfare series from the ground up. 
    
    In the visceral and dramatic single-player story campaign, Call of Duty: Modern Warfare pushes boundaries and breaks rules the way only Modern Warfare can. Players will engage in breathtaking covert operations alongside a diverse cast of international special forces throughout iconic European cities and volatile expanses of the Middle East. 
    
    And the story doesn’t end there. 
    
    In Call of Duty: Modern Warfare, players will be thrust into an immersive narrative spanning the entire game. Players can experience the ultimate online playground with classic multiplayer or squad-up and play cooperatively in a collection of elite operations, accessible to all skill levels."
)

halo3 = Game.create(
    title: "Halo 3: ODST", 
    image: "https://images.igdb.com/igdb/image/upload/t_cover_big/co1lld.jpg",
    release_date: 2009, 
    genre: "Shooter",
    description: "New Mombasa is in ruins, yet the fight is far from over. Halo 3: ODST drops players onto the streets of the besieged city in this first-person shooter. Assume the role of “The Rookie”, an Orbital Drop Shock Trooper, and discover the truth behind the Covenant invasion. Engage in intense online multiplayer battles with the complete collection of Halo 3 multiplayer maps – including three all-new battlefields – and join your teammates in Firefight, a new cooperative mode that pits you against waves of Covenant invaders."
)

darksouls = Game.create(
    title: "Dark Souls II", 
    image: "https://images.igdb.com/igdb/image/upload/t_cover_big/nloqc3fralrxbrgtgr7k.jpg",
    release_date: 2014, 
    genre: "RPG",
    description: "The unique old-school action rpg experience captivated imaginations of gamers worldwide with incredible challenge and intense emotional reward.
    Dark Souls II brings the franchise’s renowned difficulty & gripping gameplay innovations to both single and multiplayer experiences. 
    
    Immerse yourself into mind-bending environments filled with new twisted monsters and deadly bosses that could only come from the imagination of from software. A wide range of threats will prey on human senses & phobias - auditory hallucinations, vertigo, acrophobia, etc."
)

bf2 = Game.create(
    title: "Star Wars Battlefront II", 
    image: "https://images.igdb.com/igdb/image/upload/t_cover_big/l0u3uqmnnj8ws9ysm67k.jpg",
    release_date: 2017, 
    genre: "Shooter",
    description: "Embark on an endless Star Wars action experience from the best-selling Star Wars HD video game franchise of all time. Experience rich multiplayer battlegrounds across all 3 eras - prequel, classic and new trilogy - or rise as a new hero and discover an emotionally gripping single-player story spanning thirty years. 

    Customise and upgrade your heroes, starfighters or troopers - each with unique abilities to exploit in battle. Ride tauntauns or take control of tanks and speeders. Use the Force to prove your worth against iconic characters like Kylo Ren, Darth Maul or Han Solo, as you play a part in a gaming experience inspired by forty years of timeless Star Wars films."
)

stw = Game.create(
    title: "Star Wars", 
    image: "https://images.igdb.com/igdb/image/upload/t_cover_big/nnjvjtn128lthkgjyxz0.jpg",
    release_date: 1987, 
    genre: "Platform",
    description: "Star Wars is a Family Computer video game released in 1987 by Namco. Despite being based on the first Star Wars film. 

    It is the only game in the Star Wars franchise that was released exclusively in Japan. The game is a common side-scrolling platformer where the player controls Luke Skywalker (appearing with black hair due to color limitations), as he travels to join the Rebellion against the Empire."
)

dk = Game.create(
    title: "Donkey Kong", 
    image: "https://images.igdb.com/igdb/image/upload/t_cover_big/sgu8qhg8dm6t3ongrw0j.jpg",
    release_date: 1981, 
    genre: "Platform",
    description: "The player controls Jumpman or Mario in home versions. His objective is to reach the top of the stage to save the Lady (Pauline in home versions), although he must jump over barrels and avoid fire, springoboads and sand piles. It became one of the best selling arcade games of its time and set the basics of the platform subgenre."
)

freddys = Game.create(
    title: "Five Nights at Freddy's 2", 
    image: "https://images.igdb.com/igdb/image/upload/t_cover_big/gijknwoi0dybriqaxnxi.jpg",
    release_date: 2014, 
    genre: "Adventure",
    description: "Welcome back to the new and improved Freddy Fazbear's Pizza!

    In Five Nights at Freddy's 2, the old and aging animatronics are joined by a new cast of characters. They are kid-friendly, updated with the latest in facial recognition technology, tied into local criminal databases, and promise to put on a safe and entertaining show for kids and grown-ups alike!
    
    What could go wrong?
    
    As the new security guard working nights, your job is to monitor cameras and make sure nothing goes wrong after-hours. The previous guard has complained about the characters trying to get into the office (he has since been moved to day-shift). So to make your job easier, you've been provided with your very own empty Freddy Fazbear head, which should fool the animatronic characters into leaving you alone if they should accidentally enter your office.
    
    As always, Fazbear Entertainment is not responsible for death or dismemberment."
)

eb = Game.create(
    title: "EarthBound", 
    image: "https://images.igdb.com/igdb/image/upload/t_cover_big/co1hjh.jpg",
    release_date: 1994, 
    genre: "RPG",
    description: "Join Ness, Paula, Jeff, and Poo in a sci-fi turn-based JRPG adventure as they fight a mysterious alien force named Giygas in a quirky land based off of the real world. 

    EarthBound (known as MOTHER2 in Japan) is a distant sequel to the original EarthBound Beginnings, with many characters, themes, and tunes borrowed from its predecessor. Many of the characters and settings are very similar, but the only explicitly returning character is Giygas, who swears revenge at the end of the first game."
)

tmb = Game.create(
    title: "Twisted Metal: Black", 
    image: "https://images.igdb.com/igdb/image/upload/t_cover_big/j1sj1njkdnsprstxb1lw.jpg",
    release_date: 2001, 
    genre: "Racing",
    description: "Twisted Metal: Black is a vehicle combat video game developed by Incognito Entertainment (formerly Incog Inc.) and designed by Sony Computer Entertainment America for the PlayStation 2 video game console.[1] It is the fifth installment to the Twisted Metal series and was released June 18, 2001. An online enabled multiplayer-only variant, Twisted Metal: Black Online, was released later as a free send away."
)









gp1 = GamePlatform.create(game_id: halo.id, platform_id: xbox.id)
gp2 = GamePlatform.create(game_id: halo.id, platform_id: xbox360.id)
gp3 = GamePlatform.create(game_id: halo.id, platform_id: xbox1.id)
gp4 = GamePlatform.create(game_id: halo.id, platform_id: pc.id)
gp5 = GamePlatform.create(game_id: aoe.id, platform_id: pc.id)
gp6 = GamePlatform.create(game_id: smash_ult.id, platform_id: switch.id)
gp7 = GamePlatform.create(game_id: nhl.id, platform_id: xbox1.id)
gp8 = GamePlatform.create(game_id: nhl.id, platform_id: ps4.id)
gp9 = GamePlatform.create(game_id: fire.id, platform_id: switch.id)
gp10 = GamePlatform.create(game_id: marvel.id, platform_id: switch.id)
gp11 = GamePlatform.create(game_id: zelda.id, platform_id: switch.id)
gp12 = GamePlatform.create(game_id: bird.id, platform_id: mobile.id)
gp13 = GamePlatform.create(game_id: theft.id, platform_id: ps3.id)
gp14 = GamePlatform.create(game_id: theft.id, platform_id: xbox360.id)
gp15 = GamePlatform.create(game_id: theft.id, platform_id: pc.id)
gp16 = GamePlatform.create(game_id: mario64.id, platform_id: n64.id)
gp17 = GamePlatform.create(game_id: mario64.id, platform_id: wii.id)
gp18 = GamePlatform.create(game_id: mario64.id, platform_id: ds.id)
gp19 = GamePlatform.create(game_id: supermariobros.id, platform_id: nes.id)
gp20 = GamePlatform.create(game_id: skyrim.id, platform_id: ps3.id)
gp21 = GamePlatform.create(game_id: skyrim.id, platform_id: pc.id)
gp22 = GamePlatform.create(game_id: skyrim.id, platform_id: xbox360.id)
gp23 = GamePlatform.create(game_id: modernwarfare.id, platform_id: xbox1.id)
gp24 = GamePlatform.create(game_id: modernwarfare.id, platform_id: ps4.id)
gp25 = GamePlatform.create(game_id: modernwarfare.id, platform_id: pc.id)
gp26 = GamePlatform.create(game_id: halo3.id, platform_id: xbox360.id)
gp27 = GamePlatform.create(game_id: darksouls.id, platform_id: xbox360.id)
gp28 = GamePlatform.create(game_id: darksouls.id, platform_id: ps3.id)
gp29 = GamePlatform.create(game_id: darksouls.id, platform_id: pc.id)
gp30 = GamePlatform.create(game_id: bf2.id, platform_id: xbox1.id)
gp31 = GamePlatform.create(game_id: bf2.id, platform_id: ps4.id)
gp32 = GamePlatform.create(game_id: bf2.id, platform_id: pc.id)
gp33 = GamePlatform.create(game_id: stw.id, platform_id: nes.id)
gp34 = GamePlatform.create(game_id: dk.id, platform_id: atari.id)
gp35 = GamePlatform.create(game_id: freddys.id, platform_id: pc.id)
gp36 = GamePlatform.create(game_id: freddys.id, platform_id: mobile.id)
gp37 = GamePlatform.create(game_id: eb.id, platform_id: super_nintendo.id)
gp38 = GamePlatform.create(game_id: tmb.id, platform_id: ps2.id)






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
// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `The Hidden One`
  String get appBarTitle {
    return Intl.message(
      'The Hidden One',
      name: 'appBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get start {
    return Intl.message('Start', name: 'start', desc: '', args: []);
  }

  /// `Game Idea`
  String get gameIdea {
    return Intl.message('Game Idea', name: 'gameIdea', desc: '', args: []);
  }

  /// `The game idea in short is that when the game starts, the phone is passed to each player, and all players get one word except for one player who gets something different. All players try to figure out who the hidden one is, while the hidden one tries to blend in so no one suspects them.`
  String get gameDescription {
    return Intl.message(
      'The game idea in short is that when the game starts, the phone is passed to each player, and all players get one word except for one player who gets something different. All players try to figure out who the hidden one is, while the hidden one tries to blend in so no one suspects them.',
      name: 'gameDescription',
      desc: '',
      args: [],
    );
  }

  /// `Select Mode`
  String get selectMode {
    return Intl.message('Select Mode', name: 'selectMode', desc: '', args: []);
  }

  /// `Select`
  String get select {
    return Intl.message('Select', name: 'select', desc: '', args: []);
  }

  /// `Normal`
  String get normalModeTitle {
    return Intl.message('Normal', name: 'normalModeTitle', desc: '', args: []);
  }

  /// `What appears to the hidden one is \n( You are the hidden one )\n which means they know they're the hidden one and try to blend in.`
  String get normalModeDescription {
    return Intl.message(
      'What appears to the hidden one is \n( You are the hidden one )\n which means they know they\'re the hidden one and try to blend in.',
      name: 'normalModeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Blind`
  String get blindModeTitle {
    return Intl.message('Blind', name: 'blindModeTitle', desc: '', args: []);
  }

  /// `In this mode, what appears to the hidden one is a different word from the rest. This means no one knows if they're the hidden one or not.`
  String get blindModeDescription {
    return Intl.message(
      'In this mode, what appears to the hidden one is a different word from the rest. This means no one knows if they\'re the hidden one or not.',
      name: 'blindModeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Add a new player`
  String get addPlayer {
    return Intl.message(
      'Add a new player',
      name: 'addPlayer',
      desc: '',
      args: [],
    );
  }

  /// `You can't add an empty player name (:`
  String get noNameValidate {
    return Intl.message(
      'You can\'t add an empty player name (:',
      name: 'noNameValidate',
      desc: '',
      args: [],
    );
  }

  /// `The player already exists!`
  String get nameRegisteredValidate {
    return Intl.message(
      'The player already exists!',
      name: 'nameRegisteredValidate',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred!`
  String get alertTitle {
    return Intl.message(
      'An error occurred!',
      name: 'alertTitle',
      desc: '',
      args: [],
    );
  }

  /// `You can't have less than three players!`
  String get alertContent {
    return Intl.message(
      'You can\'t have less than three players!',
      name: 'alertContent',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get alertAction {
    return Intl.message('Back', name: 'alertAction', desc: '', args: []);
  }

  /// `Give the phone to`
  String get giveMobileTo {
    return Intl.message(
      'Give the phone to',
      name: 'giveMobileTo',
      desc: '',
      args: [],
    );
  }

  /// `Tap 'Show' to see the word and don't let anyone else see it`
  String get wordRevealText {
    return Intl.message(
      'Tap \'Show\' to see the word and don\'t let anyone else see it',
      name: 'wordRevealText',
      desc: '',
      args: [],
    );
  }

  /// `Show`
  String get show {
    return Intl.message('Show', name: 'show', desc: '', args: []);
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Foods`
  String get food {
    return Intl.message('Foods', name: 'food', desc: '', args: []);
  }

  /// `Koshari, Mahshi, Molokhia, Shawarma, Pizza, Burger, Foul, Ta'ameya, Kabsa, Maqluba, Mixed Grills, Kebab, Kofta, Fish, Shrimp, Sushi, Lentil Soup, Feteer Meshaltet, Aish bel Lahm, French Fries, Grilled Chicken, Pane, Macaroni Béchamel, Potato Tray, Rice with Milk, Akawi, Bamia, Moussaka, Eggs, Cheese, Mango Juice, Strawberry Juice, Laban Rayeb, Mahalabia, Rice Pudding, Kunafa, Qatayef, Baklava, Balah El Sham, Basbousa, Cheesecake, Donuts, Cake, Torte, Crème Caramel, Croissant, Paté, Sambousek, Spring Roll`
  String get foodList {
    return Intl.message(
      'Koshari, Mahshi, Molokhia, Shawarma, Pizza, Burger, Foul, Ta\'ameya, Kabsa, Maqluba, Mixed Grills, Kebab, Kofta, Fish, Shrimp, Sushi, Lentil Soup, Feteer Meshaltet, Aish bel Lahm, French Fries, Grilled Chicken, Pane, Macaroni Béchamel, Potato Tray, Rice with Milk, Akawi, Bamia, Moussaka, Eggs, Cheese, Mango Juice, Strawberry Juice, Laban Rayeb, Mahalabia, Rice Pudding, Kunafa, Qatayef, Baklava, Balah El Sham, Basbousa, Cheesecake, Donuts, Cake, Torte, Crème Caramel, Croissant, Paté, Sambousek, Spring Roll',
      name: 'foodList',
      desc: '',
      args: [],
    );
  }

  /// `Clothes`
  String get cloths {
    return Intl.message('Clothes', name: 'cloths', desc: '', args: []);
  }

  /// `Shirt, Pants, T-shirt, Jacket, Sweater, Shorts, Suit, Dress, Skirt, Abaya, Kufiya, Beanie, Socks, Belt, Shoes, Slippers, Trousers, Pajamas, Nightgown, Niqab, Hijab, Bodysuit, Denim Jacket, Hoodie, Coat, Formal Shirt, Polo Shirt, Jeans, Cloth Pants, Sport T-shirt, Leather Shoes, High Heels, Sneakers, Boots, Fur Coat, Formal Suit, Long-sleeved T-shirt, Short-sleeved T-shirt, Leather Jacket, Tracksuit, Printed T-shirt, T-shirt, Winter Jacket, Cap, Gloves, Bathrobe, Underwear`
  String get clothsList {
    return Intl.message(
      'Shirt, Pants, T-shirt, Jacket, Sweater, Shorts, Suit, Dress, Skirt, Abaya, Kufiya, Beanie, Socks, Belt, Shoes, Slippers, Trousers, Pajamas, Nightgown, Niqab, Hijab, Bodysuit, Denim Jacket, Hoodie, Coat, Formal Shirt, Polo Shirt, Jeans, Cloth Pants, Sport T-shirt, Leather Shoes, High Heels, Sneakers, Boots, Fur Coat, Formal Suit, Long-sleeved T-shirt, Short-sleeved T-shirt, Leather Jacket, Tracksuit, Printed T-shirt, T-shirt, Winter Jacket, Cap, Gloves, Bathrobe, Underwear',
      name: 'clothsList',
      desc: '',
      args: [],
    );
  }

  /// `Animals`
  String get animals {
    return Intl.message('Animals', name: 'animals', desc: '', args: []);
  }

  /// `Lion, Tiger, Leopard, Wolf, Dog, Cat, Bear, Fox, Giraffe, Elephant, Gazelle, Antelope, Crocodile, Turtle, Rabbit, Monkey, Dolphin, Whale, Shark, Penguin, Eagle, Falcon, Owl, Raven, Sparrow, Canary, Parrot, Hoopoe, Ant, Bee, Fly, Mosquito, Camel, Horse, Donkey, Cow, Goat, Sheep, Rooster, Chicken, Duck, Goose, Fish, Starfish, Jellyfish, Seahorse, Scorpion, Snake, Frog, Monitor Lizard`
  String get animalsList {
    return Intl.message(
      'Lion, Tiger, Leopard, Wolf, Dog, Cat, Bear, Fox, Giraffe, Elephant, Gazelle, Antelope, Crocodile, Turtle, Rabbit, Monkey, Dolphin, Whale, Shark, Penguin, Eagle, Falcon, Owl, Raven, Sparrow, Canary, Parrot, Hoopoe, Ant, Bee, Fly, Mosquito, Camel, Horse, Donkey, Cow, Goat, Sheep, Rooster, Chicken, Duck, Goose, Fish, Starfish, Jellyfish, Seahorse, Scorpion, Snake, Frog, Monitor Lizard',
      name: 'animalsList',
      desc: '',
      args: [],
    );
  }

  /// `Countries`
  String get countries {
    return Intl.message('Countries', name: 'countries', desc: '', args: []);
  }

  /// `Egypt, Saudi Arabia, UAE, Kuwait, Qatar, Jordan, Syria, Lebanon, Palestine, Iraq, Libya, Tunisia, Algeria, Morocco, Yemen, Bahrain, Oman, Sudan, Turkey, Iran, India, Pakistan, China, Japan, Korea, France, Germany, Italy, Spain, Portugal, Netherlands, Belgium, Sweden, Norway, Finland, Switzerland, USA, Canada, Mexico, Brazil, Argentina, Australia, New Zealand, South Africa, Nigeria, Kenya, Uganda, Malaysia, Indonesia, Thailand`
  String get countriesList {
    return Intl.message(
      'Egypt, Saudi Arabia, UAE, Kuwait, Qatar, Jordan, Syria, Lebanon, Palestine, Iraq, Libya, Tunisia, Algeria, Morocco, Yemen, Bahrain, Oman, Sudan, Turkey, Iran, India, Pakistan, China, Japan, Korea, France, Germany, Italy, Spain, Portugal, Netherlands, Belgium, Sweden, Norway, Finland, Switzerland, USA, Canada, Mexico, Brazil, Argentina, Australia, New Zealand, South Africa, Nigeria, Kenya, Uganda, Malaysia, Indonesia, Thailand',
      name: 'countriesList',
      desc: '',
      args: [],
    );
  }

  /// `Colors`
  String get colors {
    return Intl.message('Colors', name: 'colors', desc: '', args: []);
  }

  /// `Red, Blue, Green, Yellow, Orange, Purple, Pink, Black, White, Grey, Brown, Cyan, Navy, Olive Green, Turquoise, Mauve, Off-white, Beige, Silver, Gold, Lemon, Fuchsia, Copper, Lead, Cream, Maroon, Burgundy, Apricot, Mustard, Tiffany, Dark Olive, Pistachio Green, Royal Blue, Light Purple, Sky Blue, Lemon Yellow, Dark Grey, Light Grey, Sandy Beige, Honey, Mocha, Bronze, Tea Rose, Dark Violet, Cashmere, Olive Green, Waxy, Off-white with grey tinge, Grey with blue tinge, Grey with green tinge`
  String get colorsList {
    return Intl.message(
      'Red, Blue, Green, Yellow, Orange, Purple, Pink, Black, White, Grey, Brown, Cyan, Navy, Olive Green, Turquoise, Mauve, Off-white, Beige, Silver, Gold, Lemon, Fuchsia, Copper, Lead, Cream, Maroon, Burgundy, Apricot, Mustard, Tiffany, Dark Olive, Pistachio Green, Royal Blue, Light Purple, Sky Blue, Lemon Yellow, Dark Grey, Light Grey, Sandy Beige, Honey, Mocha, Bronze, Tea Rose, Dark Violet, Cashmere, Olive Green, Waxy, Off-white with grey tinge, Grey with blue tinge, Grey with green tinge',
      name: 'colorsList',
      desc: '',
      args: [],
    );
  }

  /// `Movies`
  String get movies {
    return Intl.message('Movies', name: 'movies', desc: '', args: []);
  }

  /// `Titanic, Avatar, Inception, Interstellar, The Godfather, Gladiator, The Dark Knight, Joker, Pulp Fiction, Fight Club, Forrest Gump, The Matrix, The Shawshank Redemption, The Avengers, Iron Man, Spider-Man, Black Panther, Doctor Strange, Frozen, Toy Story, Up, Coco, Moana, Cars, Finding Nemo, The Lion King, Aladdin, Beauty and the Beast, The Incredibles, Shrek, Madagascar, Zootopia, Ratatouille, Inside Out, The Hangover, The Pursuit of Happyness, Deadpool, Logan, John Wick, Pirates of the Caribbean, The Revenant, La La Land, The Notebook, Twilight, The Hunger Games, Divergent, Now You See Me, The Prestige, Tenet`
  String get moviesList {
    return Intl.message(
      'Titanic, Avatar, Inception, Interstellar, The Godfather, Gladiator, The Dark Knight, Joker, Pulp Fiction, Fight Club, Forrest Gump, The Matrix, The Shawshank Redemption, The Avengers, Iron Man, Spider-Man, Black Panther, Doctor Strange, Frozen, Toy Story, Up, Coco, Moana, Cars, Finding Nemo, The Lion King, Aladdin, Beauty and the Beast, The Incredibles, Shrek, Madagascar, Zootopia, Ratatouille, Inside Out, The Hangover, The Pursuit of Happyness, Deadpool, Logan, John Wick, Pirates of the Caribbean, The Revenant, La La Land, The Notebook, Twilight, The Hunger Games, Divergent, Now You See Me, The Prestige, Tenet',
      name: 'moviesList',
      desc: '',
      args: [],
    );
  }

  /// `Sports`
  String get sports {
    return Intl.message('Sports', name: 'sports', desc: '', args: []);
  }

  /// `Football, Basketball, Volleyball, Handball, Swimming, Tennis, Table Tennis, Karate, Judo, Wrestling, Boxing, Weightlifting, Athletics, Gymnastics, Hockey, Rugby, Baseball, Cricket, Squash, Bowling, Horse Riding, Cycling, Skydiving, Ice Skating, Diving, Rowing, Water Skiing, Parkour, Kung Fu, Taekwondo, Surfing, Racing, Formula One, Archery, Chess, Mountain Biking, Yoga, Rhythmic Gymnastics, Zumba, Pilates, Archery, Snooker, Kickboxing, Ice Hockey, Synchronized Swimming, Polo, Clay Court Tennis, Power Walking, Jogging, Rifle Shooting`
  String get sportsList {
    return Intl.message(
      'Football, Basketball, Volleyball, Handball, Swimming, Tennis, Table Tennis, Karate, Judo, Wrestling, Boxing, Weightlifting, Athletics, Gymnastics, Hockey, Rugby, Baseball, Cricket, Squash, Bowling, Horse Riding, Cycling, Skydiving, Ice Skating, Diving, Rowing, Water Skiing, Parkour, Kung Fu, Taekwondo, Surfing, Racing, Formula One, Archery, Chess, Mountain Biking, Yoga, Rhythmic Gymnastics, Zumba, Pilates, Archery, Snooker, Kickboxing, Ice Hockey, Synchronized Swimming, Polo, Clay Court Tennis, Power Walking, Jogging, Rifle Shooting',
      name: 'sportsList',
      desc: '',
      args: [],
    );
  }

  /// `Football players`
  String get footballPlayers {
    return Intl.message(
      'Football players',
      name: 'footballPlayers',
      desc: '',
      args: [],
    );
  }

  /// `Messi, Ronaldo, Neymar, Mohamed Salah, Hazard, Luka Modrić, Karim Benzema, Kevin De Bruyne, Robert Lewandowski, Erling Haaland, Kylian Mbappé, Antoine Griezmann, Luis Suárez, Ángel Di María, Frenkie de Jong, Jorginho, Kyle Walker, Thiago Silva, Vinícius Júnior, Achraf Hakimi, Riyad Mahrez, Ederson, Alisson Becker, Ter Stegen, Donnarumma, Sergio Ramos, Gerard Piqué, Raphaël Varane, José Giménez, Marquinhos, Bukayo Saka, Jude Bellingham, Casemiro, Bruno Fernandes, Sancho, Son Heung-min, Aubameyang, Lacazette, Icardi, Paulo Dybala, Grealish, Kanté, Declan Rice, Ramy Bensebaini, Sofyan Amrabat, Ziyech, Youssef En-Nesyri, Sergio Busquets, Iniesta, Xavi`
  String get footballPlayersList {
    return Intl.message(
      'Messi, Ronaldo, Neymar, Mohamed Salah, Hazard, Luka Modrić, Karim Benzema, Kevin De Bruyne, Robert Lewandowski, Erling Haaland, Kylian Mbappé, Antoine Griezmann, Luis Suárez, Ángel Di María, Frenkie de Jong, Jorginho, Kyle Walker, Thiago Silva, Vinícius Júnior, Achraf Hakimi, Riyad Mahrez, Ederson, Alisson Becker, Ter Stegen, Donnarumma, Sergio Ramos, Gerard Piqué, Raphaël Varane, José Giménez, Marquinhos, Bukayo Saka, Jude Bellingham, Casemiro, Bruno Fernandes, Sancho, Son Heung-min, Aubameyang, Lacazette, Icardi, Paulo Dybala, Grealish, Kanté, Declan Rice, Ramy Bensebaini, Sofyan Amrabat, Ziyech, Youssef En-Nesyri, Sergio Busquets, Iniesta, Xavi',
      name: 'footballPlayersList',
      desc: '',
      args: [],
    );
  }

  /// `Cities`
  String get cities {
    return Intl.message('Cities', name: 'cities', desc: '', args: []);
  }

  /// `Cairo, Riyadh, Dubai, Doha, Beirut, Amman, Damascus, Baghdad, Khartoum, Algiers, Tunis, Tripoli, Rabat, Jeddah, Alexandria, Tanta, Mansoura, Assiut, Aswan, Luxor, Marsa Matrouh, Ain Sokhna, Sharm El Sheikh, Hurghada, Dammam, Khobar, Medina, Mecca, Madinah, Abha, Jizan, Neom, Ha'il, Buraidah, Muscat, Manama, Salalah, Kuala Lumpur, Bangkok, Singapore, New York, Washington, London, Paris, Berlin, Amsterdam, Rome, Milan, Madrid`
  String get citiesList {
    return Intl.message(
      'Cairo, Riyadh, Dubai, Doha, Beirut, Amman, Damascus, Baghdad, Khartoum, Algiers, Tunis, Tripoli, Rabat, Jeddah, Alexandria, Tanta, Mansoura, Assiut, Aswan, Luxor, Marsa Matrouh, Ain Sokhna, Sharm El Sheikh, Hurghada, Dammam, Khobar, Medina, Mecca, Madinah, Abha, Jizan, Neom, Ha\'il, Buraidah, Muscat, Manama, Salalah, Kuala Lumpur, Bangkok, Singapore, New York, Washington, London, Paris, Berlin, Amsterdam, Rome, Milan, Madrid',
      name: 'citiesList',
      desc: '',
      args: [],
    );
  }

  /// `Devices`
  String get devices {
    return Intl.message('Devices', name: 'devices', desc: '', args: []);
  }

  /// `Mobile, Laptop, Computer, Tablet, Television, Smartwatch, Mouse, Keyboard, Printer, Headphones, Router, Camera, Projector, Gaming Console, PlayStation, Xbox, Sound System, Electric Heater, Fan, Air Conditioner, Refrigerator, Washing Machine, Microwave, Blender, Juicer, Food Processor, Vacuum Cleaner, Electric Oven, Kettle, Heater, Tape Recorder, DVD Player, Receiver, Alarm System, Gaming Mobile, Gaming Laptop, Hard Drive, Flash Drive, Modem, Motherboard, Graphics Card, Processor, Power Supply, Metal Detector, Fingerprint Scanner, Display Device, Tracking Device, Sports Watch, Headset, Blood Sugar Monitor`
  String get devicesList {
    return Intl.message(
      'Mobile, Laptop, Computer, Tablet, Television, Smartwatch, Mouse, Keyboard, Printer, Headphones, Router, Camera, Projector, Gaming Console, PlayStation, Xbox, Sound System, Electric Heater, Fan, Air Conditioner, Refrigerator, Washing Machine, Microwave, Blender, Juicer, Food Processor, Vacuum Cleaner, Electric Oven, Kettle, Heater, Tape Recorder, DVD Player, Receiver, Alarm System, Gaming Mobile, Gaming Laptop, Hard Drive, Flash Drive, Modem, Motherboard, Graphics Card, Processor, Power Supply, Metal Detector, Fingerprint Scanner, Display Device, Tracking Device, Sports Watch, Headset, Blood Sugar Monitor',
      name: 'devicesList',
      desc: '',
      args: [],
    );
  }

  /// `Tools`
  String get tools {
    return Intl.message('Tools', name: 'tools', desc: '', args: []);
  }

  /// `Wrench, Screwdriver, Hammer, Pliers, Saw, Pincers, Tape Measure, Drill, Drill, Angle Grinder, Pincers, Open-end Wrench, Adjustable Wrench, Allen Key, Lug Wrench, Pipe Wrench, Scissors, Cutter, Pencil, Marker, Ruler, Triangle, Compass, Spirit Level, Thermometer, Scale, Axe, Chisel, Knife, Blade, Cleaver, Scraper, Shears, Glue Gun, Silicone Gun, Spray Gun, Air Gun, Soldering Iron, Iron, Soldering Iron, Iron, Trowel, Shovel, Plaster Trowel, Brush, Roller, Electrical Tape, Electrical Tape, Measuring Tape, Nails, Nuts, Screws, Blade, Razor Blade, Saw Blade, Nut Wrench`
  String get toolsList {
    return Intl.message(
      'Wrench, Screwdriver, Hammer, Pliers, Saw, Pincers, Tape Measure, Drill, Drill, Angle Grinder, Pincers, Open-end Wrench, Adjustable Wrench, Allen Key, Lug Wrench, Pipe Wrench, Scissors, Cutter, Pencil, Marker, Ruler, Triangle, Compass, Spirit Level, Thermometer, Scale, Axe, Chisel, Knife, Blade, Cleaver, Scraper, Shears, Glue Gun, Silicone Gun, Spray Gun, Air Gun, Soldering Iron, Iron, Soldering Iron, Iron, Trowel, Shovel, Plaster Trowel, Brush, Roller, Electrical Tape, Electrical Tape, Measuring Tape, Nails, Nuts, Screws, Blade, Razor Blade, Saw Blade, Nut Wrench',
      name: 'toolsList',
      desc: '',
      args: [],
    );
  }

  /// `Video Games`
  String get videoGames {
    return Intl.message('Video Games', name: 'videoGames', desc: '', args: []);
  }

  /// `PUBG, Fortnite, Call of Duty, FIFA, eFootball, GTA, Red Dead, Minecraft, The Witcher, The Legend of Zelda, Uncharted, The Last of Us, God of War, Horizon Zero Dawn, Space Engineers, Battlefield, Assassin's Creed, Far Cry, Watch Dogs, Cyberpunk, Diablo, Halo, Super Mario, Sonic, Pokémon, Donkey Kong, Tekken, Street Fighter, Mortal Kombat, Kingdom Hearts, Final Fantasy, Tomb Raider, Harry Potter, Starfield, Spider-Man, Batman, Ghost of Tsushima, Ninja Gaiden, Resident Evil, Silent Hill, Demon's Souls, Dark Souls, Bloodborne, Elden Ring, Doom, Wolfenstein, Crash Bandicoot, Space Engineers, Stardew Valley, Genshin Impact, League of Legends, Overwatch, Valorant, Forza Horizon`
  String get videoGamesList {
    return Intl.message(
      'PUBG, Fortnite, Call of Duty, FIFA, eFootball, GTA, Red Dead, Minecraft, The Witcher, The Legend of Zelda, Uncharted, The Last of Us, God of War, Horizon Zero Dawn, Space Engineers, Battlefield, Assassin\'s Creed, Far Cry, Watch Dogs, Cyberpunk, Diablo, Halo, Super Mario, Sonic, Pokémon, Donkey Kong, Tekken, Street Fighter, Mortal Kombat, Kingdom Hearts, Final Fantasy, Tomb Raider, Harry Potter, Starfield, Spider-Man, Batman, Ghost of Tsushima, Ninja Gaiden, Resident Evil, Silent Hill, Demon\'s Souls, Dark Souls, Bloodborne, Elden Ring, Doom, Wolfenstein, Crash Bandicoot, Space Engineers, Stardew Valley, Genshin Impact, League of Legends, Overwatch, Valorant, Forza Horizon',
      name: 'videoGamesList',
      desc: '',
      args: [],
    );
  }

  /// `Everything`
  String get everything {
    return Intl.message('Everything', name: 'everything', desc: '', args: []);
  }

  /// `Mobile, Laptop, Koshari, Mahshi, Molokhia, Shirt, Pants, T-shirt, Lion, Tiger, Leopard, Egypt, Saudi Arabia, UAE, Red, Blue, Green, Titanic, Avatar, Inception, Football, Basketball, Volleyball, Wrench, Screwdriver, Hammer, PUBG, Fortnite, Call of Duty, Shawarma, Pizza, Burger, Jacket, Sweater, Shorts, Wolf, Dog, Cat, Kuwait, Qatar, Jordan, Yellow, Orange, Purple, The Godfather, Gladiator, The Dark Knight, Swimming, Tennis, Table Tennis, Pliers, Saw, Pincers, FIFA, eFootball, GTA, Foul, Ta'ameya, Kabsa, Suit, Dress, Skirt, Bear, Fox, Giraffe, Syria, Lebanon, Palestine, Pink, Black, White, The Shawshank Redemption, The Avengers, Iron Man, Karate, Judo, Wrestling, Tape Measure, Drill, Drill, Red Dead, Minecraft, The Witcher, Maqluba, Mixed Grills, Kebab, Abaya, Kufiya, Beanie, Elephant, Gazelle, Antelope, Iraq, Libya, Tunisia, Grey, Brown, Cyan, Frozen, Toy Story, Up, Boxing, Weightlifting, Athletics, Pincers, Open-end Wrench, Adjustable Wrench, The Legend of Zelda, Uncharted, Fish, Shrimp, Sushi, Socks, Belt, Shoes, Crocodile, Turtle, Rabbit, Algeria, Morocco, Yemen, Navy, Olive Green, Turquoise, The Pursuit of Happyness, Deadpool, Logan, Gymnastics, Hockey, Rugby, The Last of Us, God of War, Lentil Soup, Feteer Meshaltet, Aish bel Lahm, Slippers, Trousers, Pajamas, Monkey, Dolphin, Whale, Bahrain, Oman, Sudan, Mauve, Off-white, Beige, Pirates of the Caribbean, The Revenant, La La Land, Baseball, Cricket, Squash, Horizon Zero Dawn, Space Engineers, French Fries, Grilled Chicken, Pane, Nightgown, Niqab, Hijab, Shark, Penguin, Eagle, Turkey, Iran, India, Silver, Gold, Lemon, The Notebook, Twilight, The Hunger Games, Bowling, Horse Riding, Cycling, Battlefield, Assassin's Creed, Far Cry, Macaroni Béchamel, Potato Tray, Rice with Milk, Bodysuit, Denim Jacket, Hoodie, Falcon, Owl, Raven, Pakistan, China, Japan, Fuchsia, Copper, Lead, Skydiving, Ice Skating, Diving, Watch Dogs, Cyberpunk, Diablo, Akawi, Bamia, Moussaka, Coat, Formal Shirt, Polo Shirt, Sparrow, Canary, Parrot, Korea, France, Germany, Cream, Maroon, Burgundy, Rowing, Water Skiing, Parkour, Water, Air, Fire, Earth, Sun, Moon, Sky, Star, Rain, Snow, Cloud, Wind, Lightning, Thunder, Wave, Sand, Mountain, Sea, River, Tree, Flower, Paper, Pen, Book, Desk, Chair, Table, Door, Window, Wall, Floor, Ceiling, Lamp, Telephone, Radio, Clock, Mirror, Cup, Plate, Spoon, Fork, Knife, Basket, Box, Key, Lock, Rope, Thread, Needle, Scissors, Button, Frame, Picture, Painting, Glass, Plastic, Iron, Wood, Stone, Metal`
  String get everythingList {
    return Intl.message(
      'Mobile, Laptop, Koshari, Mahshi, Molokhia, Shirt, Pants, T-shirt, Lion, Tiger, Leopard, Egypt, Saudi Arabia, UAE, Red, Blue, Green, Titanic, Avatar, Inception, Football, Basketball, Volleyball, Wrench, Screwdriver, Hammer, PUBG, Fortnite, Call of Duty, Shawarma, Pizza, Burger, Jacket, Sweater, Shorts, Wolf, Dog, Cat, Kuwait, Qatar, Jordan, Yellow, Orange, Purple, The Godfather, Gladiator, The Dark Knight, Swimming, Tennis, Table Tennis, Pliers, Saw, Pincers, FIFA, eFootball, GTA, Foul, Ta\'ameya, Kabsa, Suit, Dress, Skirt, Bear, Fox, Giraffe, Syria, Lebanon, Palestine, Pink, Black, White, The Shawshank Redemption, The Avengers, Iron Man, Karate, Judo, Wrestling, Tape Measure, Drill, Drill, Red Dead, Minecraft, The Witcher, Maqluba, Mixed Grills, Kebab, Abaya, Kufiya, Beanie, Elephant, Gazelle, Antelope, Iraq, Libya, Tunisia, Grey, Brown, Cyan, Frozen, Toy Story, Up, Boxing, Weightlifting, Athletics, Pincers, Open-end Wrench, Adjustable Wrench, The Legend of Zelda, Uncharted, Fish, Shrimp, Sushi, Socks, Belt, Shoes, Crocodile, Turtle, Rabbit, Algeria, Morocco, Yemen, Navy, Olive Green, Turquoise, The Pursuit of Happyness, Deadpool, Logan, Gymnastics, Hockey, Rugby, The Last of Us, God of War, Lentil Soup, Feteer Meshaltet, Aish bel Lahm, Slippers, Trousers, Pajamas, Monkey, Dolphin, Whale, Bahrain, Oman, Sudan, Mauve, Off-white, Beige, Pirates of the Caribbean, The Revenant, La La Land, Baseball, Cricket, Squash, Horizon Zero Dawn, Space Engineers, French Fries, Grilled Chicken, Pane, Nightgown, Niqab, Hijab, Shark, Penguin, Eagle, Turkey, Iran, India, Silver, Gold, Lemon, The Notebook, Twilight, The Hunger Games, Bowling, Horse Riding, Cycling, Battlefield, Assassin\'s Creed, Far Cry, Macaroni Béchamel, Potato Tray, Rice with Milk, Bodysuit, Denim Jacket, Hoodie, Falcon, Owl, Raven, Pakistan, China, Japan, Fuchsia, Copper, Lead, Skydiving, Ice Skating, Diving, Watch Dogs, Cyberpunk, Diablo, Akawi, Bamia, Moussaka, Coat, Formal Shirt, Polo Shirt, Sparrow, Canary, Parrot, Korea, France, Germany, Cream, Maroon, Burgundy, Rowing, Water Skiing, Parkour, Water, Air, Fire, Earth, Sun, Moon, Sky, Star, Rain, Snow, Cloud, Wind, Lightning, Thunder, Wave, Sand, Mountain, Sea, River, Tree, Flower, Paper, Pen, Book, Desk, Chair, Table, Door, Window, Wall, Floor, Ceiling, Lamp, Telephone, Radio, Clock, Mirror, Cup, Plate, Spoon, Fork, Knife, Basket, Box, Key, Lock, Rope, Thread, Needle, Scissors, Button, Frame, Picture, Painting, Glass, Plastic, Iron, Wood, Stone, Metal',
      name: 'everythingList',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

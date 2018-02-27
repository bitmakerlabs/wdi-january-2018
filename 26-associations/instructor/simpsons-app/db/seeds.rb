Character.destroy_all
Catchphrase.destroy_all
Episode.destroy_all
Quote.destroy_all

characters = [
  'Homer Simpson',
  'Abe Simpson',
  'Krusty the Clown',
  'Barney Gumble',
  'Groundskeeper Willie',
  'Mayor Quimby',
  'Hans Moleman',
  'Sideshow Mel',
  'Squeaky Voiced Teen',
  'Gil',
  'Rich Texan',
  'Bart Simpson',
  'Nelson Muntz',
  'Ralph Wiggum',
  'Kearny',
  'Marge Simpson',
  'Patty Bouvier',
  'Selma Bouvier',
  'Lisa Simpson',
  'Moe Szyslak',
  'Chief Wiggum',
  'Apu Nahasapeemapetilon',
  'Carl',
  'Comic Book Guy',
  'Lou',
  'Prof. Frink',
  'Cletus',
  'Superintendent Chalmers',
  'Snake',
  'Sea Captain',
  'Kirk Van Houten',
  'Wiseguy',
  'Bumblebee Man',
  'Disco Stu',
  'Dr. Nick',
  'Mr. Burns',
  'Waylon Smithers',
  'Ned Flanders',
  'Seymour Skinner',
  'Lenny',
  'Kent Brockman',
  'Reverend Lovejoy',
  'Dr. Hibbert',
  'Otto',
  'Jasper',
  'Milhouse Van Houten',
  'Jimbo',
  'Rod Flanders',
  'Todd Flanders',
  'Agnes Skinner',
  'Crazy Cat Lady',
  'Lindsey Naegle',
  'Manjula Nahasapeemapetilon',
  'Maude Flanders',
  'Helen Lovejoy',
  'Ms. Hoover',
  'Luann Van Houten',
  'Martin Prince',
  'Sherri Uter',
  'Terry Uter',
  'Edna Krabappel',
  'Lionel Hutz',
  'Troy McClure',
  'Fat Tony',
  "Santa's Little Helper",
  'Sideshow Bob',
  'Artie Ziff',
  'Hank Scorpio',
  'Mona Simpson',
  'Stephen Hawking',
  'Maggie Simpson'
]

characters.each do |character|
  puts "Creating #{character}"
  Character.create!(name: character)
end

catchphrases = {
  "Homer Simpson": [
    "D'oh!",
    "Woo Hoo!",
    "Why you little!",
    "Mmm, donuts.",
    "Aaargh!",
    "Stupid Flanders.",
    "BART!",
    "Boring!",
    "Whatever, I'll be at Moe's.",
    "Let's All Go Out For Some Frosty Chocolate Milkshakes"
  ],
  "Marge Simpson": [
    "Mmm~mmmmm",
    "You have no idea what it's like, being married to you.",
    "I don't think that's a very good idea.",
    "Oh, Homie.",
    "So many"
  ],
  "Bart Simpson": [
    "Eat My Shorts!",
    "Don't Have a Cow, Man!",
    "¡Ay, caramba!",
    "Get Bent.",
    "I'm Bart Simpson, Who the Hell are You?",
    "Cowabunga!",
    "I Didn't Do It!",
    "Aw, Man!",
    "Aw, Geez!",
    "Whoa, mama!",
    "Eep!"
  ],
  "Lisa Simpson": [
    "If anyone wants me, I'll be in my room.",
    "Quit it, Bart!",
    "BAAAAAART!"
  ],

  "Maggie Simpson": [
    "Daddy."
  ],
  "Ned Flanders": [
    "Hi-Diddily-Ho!",
    "Okily Dokily!",
    "Toodily-Doo",
    "What can I ding-dong-diddily-do for you?"
  ],
  "Rod Flanders": [
    "Yay!!!"
  ],
  "Todd Flanders": [
    "Yay!!!"
  ]
}

catchphrases.each do |name, phrases|
  puts "Creating catchphrases for #{name}"
  character = Character.find_by(name: name)

  phrases.each do |phrase|
    puts "Creating phrase:"
    puts phrase
    character.catchphrases.create!(phrase: phrase)
  end
end

episodes_file = "/Users/sean/Desktop/26-associations/db/data/txt/episodes.txt"

File.open(episodes_file).readlines.each do |line|
  split_line = line.split
  season_id  = split_line.first
  number = split_line[1]
  title      = split_line[2..-1].join(' ').chomp

  puts "Creating #{season_id}-#{number}: #{title}"
  Episode.create!(
    number: number,
    season_id: season_id,
    title: title
  )
end


quotes = [
  {
    quote: "There's only one thing to do at a moment like this: strut!",
    characters: "Bart Simpson",
    episode: "Bart's Girlfriend",
    air_date: "November 6, 1994"
    },
  {
    quote: "Your ideas are intriguing to me, and I wish to subscribe to your newsletter.",
    characters: "Homer Simpson",
    episode: "Mountain of Madness",
    air_date: "February 2, 1997"
  },
  {
    quote: "Everything's coming up Milhouse.",
    characters: "Milhouse Van Houten",
    episode: "Mom and Pop Art",
    air_date: "April 11, 1999"
  },
  {
    quote: "I used to be with it, but then they changed what ‘it' was, and now what I'm with isn't it. And what's ‘it' seems weird and scary to me.",
    characters: "Abe Simpson",
    episode: "Homerpalooza",
    air_date: "May 19, 1996"
  },
  {
    quote: "I, for one, welcome our new insect overlords.",
    characters: "Kent Brockman",
    episode: "Deep Space Homer",
    air_date: "February 24, 1994"
  },
  {
    quote: "It takes two to lie: one to lie and one to listen.",
    characters: "Homer Simpson",
    episode: "Colonel Homer",
    air_date: "March 26, 1992"
  },
  {
    quote: "I would kill everyone in this room for a drop of sweet beer.",
    characters: "Homer Simpson",
    episode: "Duffless",
    air_date: "February 18, 1993"
  },
  {
    quote: "They taste like burning.",
    characters: "Ralph Wiggum",
    episode: "Das Bus",
    air_date: "February 15, 1998"
  },
  {
    quote: "Marriage is like a coffin and each kid is another nail.",
    characters: "Homer Simpson",
    episode: "How I Spent My Strummer Vacation",
    air_date: "November 10, 2002"
  },
  {
    quote: "I've said it before and I'll say it again: democracy simply doesn't work.",
    characters: "Kent Brockman",
    episode: "Bart's Comet",
    air_date: "February 5, 1995"
  },
  {
    quote: "What's the point of going out? We're just gonna wind up back here anyway.",
    characters: "Homer Simpson",
    episode: "Scenes from the Class Struggle in Springfield",
    air_date: "February 4, 1996"
  },
  {
    quote: "I didn't think it was physically possible, but this both sucks and blows.",
    characters: "Bart Simpson",
    episode: "Marge Simpson in: 'Screaming Yellow Honkers'",
    air_date: "February 21, 1999"
  },
  {
    quote: "Loneliness and cheeseburgers are a dangerous mix.",
    characters: "Comic Book Guy",
    episode: "My Sister, My Sitter",
    air_date: "March 2, 1997"
  },
  {
    quote: "You tried your best and you failed miserably. The lesson is: Never try.",
    characters: "Homer Simpson",
    episode: "Burns' Heir",
    air_date: "April 14, 1994"
  },
  {
    quote: "There's a 4:30 in the morning now?",
    characters: "Bart Simpson",
    episode: "Bart's Comet",
    air_date: "February 5, 1995"
  },
  {
    quote: "Don't blame me, I voted for Kodos.",
    characters: "Homer Simpson",
    episode: "Treehouse of Horror VII",
    air_date: "October 27, 1996"
  },
  {
    quote: "I can't promise I'll try, but I'll try to try.",
    characters: "Bart Simpson",
    episode: "The Canine Mutiny",
    air_date: "April 13, 1997"
  },
  {
    quote: "My cat's breath smells like cat food.",
    characters: "Ralph Wiggum",
    episode: "Lisa's Rival",
    air_date: "September 11, 1994"
  }
]

quotes.each do |quote|
  quote[:quote]
  character = Character.find_by(name: quote[:characters])
  episode   = Episode.find_by(title: quote[:episode])


  if character && episode
    puts "CREATING QUOTE"
    p quote
    Quote.create!(
      quote: quote[:quote],
      character: character,
      episode: episode
    )
  else
    puts "NOT CREATING QUOTE:"
    p quote
  end
end

Artist.create name: "Dexys Midnight Runners", wallpaper: "dexys-wp.jpg", bio: "Dexys Midnight Runners (currently called Dexys)[1] are an English pop band with soul influences, who achieved their major success in the early to mid-1980s. They are best known for their songs Come On Eileen and Geno, both of which peaked at No. 1 on the UK Singles Chart."
Artist.create name: "Vampire Weekend", wallpaper: "VW-wp.jpeg", bio: "Vampire Weekend is an American rock band from New York City, formed in 2006. They are currently signed to XL Recordings. The band consists of lead vocalist and guitarist Ezra Koenig, guitarist/keyboardist and backing vocalist Rostam Batmanglij, drummer and percussionist Chris Tomson and bassist and backing vocalist Chris Baio. The band released its first album Vampire Weekend in 2008, which included the singles 'Mansard Roof', 'A-Punk', 'Oxford Comma', 'Cape Cod Kwassa Kwassa' and 'The Kids Don't Stand a Chance'. 'Contra', their second album, was released in 2010. Their third studio album, Modern Vampires of the City, was released on May 14, 2013, winning them a Grammy Award for Best Alternative Music Album in 2014."
Artist.create name: "Wilco", wallpaper: "wilco-wp.jpg", bio: "Wilco is an American alternative rock band based in Chicago, Illinois. The band was formed in 1994 by the remaining members of alternative country group Uncle Tupelo following singer Jay Farrar's departure. Wilco's lineup changed frequently during its first decade, with only singer Jeff Tweedy and bassist John Stirratt remaining from the original incarnation. Since early 2004, the lineup has been unchanged, consisting of Tweedy, Stirratt, guitarist Nels Cline, multi-instrumentalist Pat Sansone, keyboard player Mikael Jorgensen, and drummer Glenn Kotche. Wilco has released eight studio albums, a live double album, and four collaborations: three with Billy Bragg and one with The Minus 5."
Artist.create name: "David Bowie", wallpaper: "bowie-wp.jpg", bio: "David Bowie ( born David Robert Jones, 8 January 1947) is an English singer, songwriter, multi-instrumentalist, record producer, arranger, and actor. He is also a painter and collector of fine art. Bowie has been a major figure in the world of popular music for over four decades, and is renowned as an innovator, particularly for his work in the 1970s. He is known for his distinctive baritone voice as well as the intellectual depth and eclecticism of his work. Aside from his musical abilities, he is recognised for his androgynous beauty, which was an iconic element to his image, particularly in the 1970s and 1980s."

Album.create title: "Too-Rye-Ay", year: 1982, cover: "tooryeay-cover.jpg", artist_id: 1
Album.create title: "Vampire Weekend", year: 2008, cover: "vw-cover.jpg", artist_id: 2
Album.create title: "Sky Blue Sky", year: 2007, cover: "skybluesky-cover.jpg", artist_id: 3
Album.create title: "Contra", year: 2010, cover: "contra-cover.jpg", artist_id: 2
Album.create title: "Let's Dance", year: 1983, cover: "letsdance-cover.jpg", artist_id: 4

song_a = Song.create title: "Come On Eileen", duration: "03:25", album_id: 1
song_b = Song.create title: "One (Blake's Got a New Face)", duration: "03:13", album_id: 2
song_c = Song.create title: "Hate It Here", duration: "04:31", album_id: 3
song_d = Song.create title: "Modern Love", duration: "04:48", album_id: 5

movie_a = Movie.create title: "The Perks of Being a Wallflower", director: "Stephen Chbosky", year: 2012, poster: "boyhood-poster.jpg"
movie_b = Movie.create title: "Take Me Home Tonight", director: "Michael Dowse", year: 2011, poster: "tmht-poster.jpg"
movie_c = Movie.create title: "Boyhood", director: "Richard Linklater", year: 2014, poster: "tpobaw-poster.jpg"
movie_d = Movie.create title: "Frances Ha", director: "Noah Baumbach", year: 2012, poster: "francesha-poster.jpg"
movie_e = Movie.create title: "Adventureland", director: "Greg Mottola", year: 2009, poster: "adventureland-poster.jpg"
movie_f = Movie.create title: "Hot Tub Time Machine", director: "Steve Pink", year: 2010, poster: "httm-poster.jpg"

song_a.movies << movie_a
song_a.movies << movie_b
song_b.movies << movie_c
song_c.movies << movie_c
song_d.movies << movie_d
song_d.movies << movie_e
song_d.movies << movie_f
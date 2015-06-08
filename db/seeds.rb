song_a = Song.create title: "Tighten Up", album: "Brothers", artist: "The Black Keys"
Song.create title: "Montana", album: "Year of Hibernation", artist: "Youth Lagoon"

movie_a = Movie.create title: "Tiburones mutantes 2: la venganza", director: "El gemelo malvado de Michale Bay", year: 2046
movie_b = Movie.create title: "Una sardina reflexiona sobre la vida, el yo y el superyo", director: "Un falso hermano de los Duplass", year: 2015
Movie.create title: "Otra estúpida película americana", director: "Judd Apatow puesto de pegamento", year: 2016
Movie.create title: "Iba yo de peregrina y me cogiste de la córnea", director: "Lars Von Trier se mea en el mundo", year: 1994

song_a.movies << movie_a
song_a.movies << movie_b
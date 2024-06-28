class Movies {
  String? Title,
      Year,
      Rated,
      Released,
      Runtime,
      Genre,
      Director,
      Writer,
      Actors,
      Plot,
      Language,
      Country,
      Awards,
      Poster,
      Metascore,
      imdbRating,
      imdbVotes,
      imdbID,
      Type,
      DVD,
      BoxOffice,
      Production,
      Website,
      Response;
  List<Rating>? Ratings = [];

  Movies(
      {this.Title,
      this.Year,
      this.Rated,
      this.Runtime,
      this.Released,
      this.Genre,
      this.Director,
      this.Writer,
      this.Actors,
      this.Poster,
      this.Metascore,
      this.imdbRating,
      this.imdbID,
      this.Type,
      this.DVD,
      this.BoxOffice,
      this.Production,
      this.Response,
      this.Country,
      this.Awards,
      this.imdbVotes,
      this.Language,
      this.Plot,
      this.Website,
      this.Ratings});

  factory Movies.fromJson(Map json) {
    return Movies(
        Actors: json['Actors'],
        Awards: json['Awards'],
        BoxOffice: json['BoxOffice'],
        Country: json['Country'],
        Director: json['Director'],
        DVD: json['DVD'],
        Genre: json['Genre'],
        imdbID: json['imdbID'],
        imdbRating: json['imdbRating'],
        imdbVotes: json['imdbVotes'],
        Language: json['Language'],
        Metascore: json['Metascore'],
        Plot: json['Plot'],
        Poster: json['Poster'],
        Production: json['Production'],
        Rated: json['Rated'],
        Released: json['Released'],
        Response: json['Response'],
        Runtime: json['Runtime'],
        Title: json['Title'],
        Type: json['Type'],
        Website: json['Website'],
        Writer: json['Writer'],
        Year: json['Year'],
      Ratings: json['Ratings']
    );
  }
}

class Rating{
  String? Source,Value;
  Rating({this.Source,this.Value});
  factory Rating.fromJson(Map json){
    return Rating(
      Source: json['Source'],
      Value: json['Value']
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_star_wars/model/movie.dart';
import 'package:flutter_star_wars/ui/movies/movie_details.dart';
import 'package:intl/intl.dart';

class ListCell extends StatelessWidget {
  final List<Movie> movies;
  final int index;

  ListCell({this.movies, this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      child: GestureDetector(
        onTap: () {
          _onTap(movies[index].title, context, movies[index]);
        },
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 2.0, 2.0, 2.0),
                  child: Text(
                    movies[index].title,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 2.0, 2.0, 2.0),
                  child: Text(
                    movies[index].director,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 2.0, 2.0, 10.0),
                  child: Text(
                    new DateFormat("dd/MM/yyyy").format(movies[index].releaseDate).toString(),
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    movies[index].episodeId.toString(),
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    size: 35.0,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _onTap(String title, BuildContext context, Movie movie) {
    return Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MovieDetails(
                  title: title,
                  movie: movie,
                )));
  }
}

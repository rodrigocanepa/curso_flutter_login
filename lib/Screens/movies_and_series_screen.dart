import 'package:curso2/HttpServices/http_services.dart';
import 'package:curso2/Items/item_movie.dart';
import 'package:curso2/Models/movie_model.dart';
import 'package:flutter/material.dart';

class MoviesAndSeriesScreen extends StatefulWidget {
  const MoviesAndSeriesScreen({Key? key}) : super(key: key);

  @override
  _MoviesAndSeriesScreenState createState() => _MoviesAndSeriesScreenState();
}

class _MoviesAndSeriesScreenState extends State<MoviesAndSeriesScreen> {

  List<MovieModel> movieList = [];

  getMovies() async{
    movieList = await HttpServices().getMovieList();
    setState(() {});
  }

  @override
  void initState() {
    getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(child: _list()),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  color: Colors.red,
                  child: Text(
                    "Aqui va el contador"
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  color: Colors.blue,
                  child: Text(
                      "Aqui va el boton de reset"
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _list(){
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView.builder(
        itemCount: movieList.length, //150
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) => ItemMovie(movieModel: movieList[index]),
      ),
    );
  }
}

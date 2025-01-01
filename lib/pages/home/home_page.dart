import 'package:flutter/material.dart';
import 'package:flutter_movie_info_app/pages/home/widgets/sort_by_popularity.dart';
import 'package:flutter_movie_info_app/pages/home/widgets/currently_playing.dart';
import 'package:flutter_movie_info_app/pages/home/widgets/sort_by_rating.dart';
import 'package:flutter_movie_info_app/pages/home/widgets/to_be_released.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text('가장 인기있는'),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network('https://picsum.photos/600/900',
                    fit: BoxFit.cover),
              )),
          CurrentlyPlaying(),
          SortByPopularity(),
          SortByRating(),
          ToBeReleased()
        ],
      ),
    );
  }
}

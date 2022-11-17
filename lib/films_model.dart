import 'package:flutter/material.dart';
import 'dart:convert';

class Films {
  final String name;
  final String image;
  final String imdb;
  final String reviews;
  final String rating;
  final String time;
  final String director;
  final String writer;
  final String genre1;
  final String genre2;
  final String genre3;
  final String description;

  const Films({
    required this.name,
    required this.image,
    required this.imdb,
    required this.reviews,
    required this.rating,
    required this.time,
    required this.director,
    required this.writer,
    required this.genre1,
    required this.genre2,
    required this.genre3,
    required this.description,
});

  static Films fromJson(json) =>
      Films(
        name: json['name'],
        image: json['image'],
        imdb: json['imdb'],
        reviews: json['reviews'],
        rating: json['rating'],
        time: json['time'],
        director: json['director'],
        writer: json['writer'],
        genre1: json['genre1'],
        genre2: json['genre2'],
        genre3: json['genre3'],
        description: json['description'],
      );

}

class FilmsApi {
  static Future<List<Films>> getFilms(BuildContext context) async {
    final assetBungle = DefaultAssetBundle.of(context);
    final data = await assetBungle.loadString('assets/films.json');
    final body = jsonDecode(data);
    return body.map<Films>(Films.fromJson).toList();
  }
}


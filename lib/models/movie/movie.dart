import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:potteriana_ult/repository/api/get_movie/get_movie.graphql.dart';
import 'package:potteriana_ult/repository/api/get_movies/get_movies.graphql.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    String? slug,
    String? title,
    String? boxOffice,
    String? budget,
    String? poster,
    String? rating,
    String? runningTime,
    String? summary,
    String? trailer,
    String? wiki,
    String? releaseDate,
    @Default([])
    List<String>? cinematographers,
    @Default([])
    List<String>? directors,
    @Default([])
    List<String>? distributors,
    @Default([])
    List<String>? editors,
    @Default([])
    List<String>? musicComposers,
    @Default([])
    List<String>? producers,
    @Default([])
    List<String>? screenwriters,
  }) = _Movie;



  factory Movie.fromJson(Map<String, dynamic> json) =>
      _$MovieFromJson(json);
  factory Movie.fromDTOGetMovies(Query_Movies_movies_nodes dTO) =>
      Movie(slug: dTO.slug, title: dTO.title);
  factory Movie.fromDTOGetMovie(Query_Movie_movie dTO) => Movie(
    slug: dTO.slug,
    title: dTO.title,
    summary: dTO.summary,
    releaseDate: dTO.releaseDate,
    boxOffice: dTO.boxOffice,
    wiki: dTO.wiki,
    budget: dTO.budget,
    poster: dTO.poster,
    rating: dTO.rating,
    runningTime: dTO.runningTime,
    trailer: dTO.trailer,
    cinematographers: dTO.cinematographers,
    directors: dTO.directors,
    distributors: dTO.distributors,
    editors: dTO.editors,
    musicComposers: dTO.musicComposers,
    producers: dTO.producers,
    screenwriters: dTO.screenwriters,
  );
}
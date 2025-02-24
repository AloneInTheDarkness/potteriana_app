import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables_Query_Movie {
  factory Variables_Query_Movie({required String slug}) =>
      Variables_Query_Movie._({
        r'slug': slug,
      });

  Variables_Query_Movie._(this._$data);

  factory Variables_Query_Movie.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$slug = data['slug'];
    result$data['slug'] = (l$slug as String);
    return Variables_Query_Movie._(result$data);
  }

  Map<String, dynamic> _$data;

  String get slug => (_$data['slug'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$slug = slug;
    result$data['slug'] = l$slug;
    return result$data;
  }

  CopyWith_Variables_Query_Movie<Variables_Query_Movie> get copyWith =>
      CopyWith_Variables_Query_Movie(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_Movie || runtimeType != other.runtimeType) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$slug = slug;
    return Object.hashAll([l$slug]);
  }
}

abstract class CopyWith_Variables_Query_Movie<TRes> {
  factory CopyWith_Variables_Query_Movie(
    Variables_Query_Movie instance,
    TRes Function(Variables_Query_Movie) then,
  ) = _CopyWithImpl_Variables_Query_Movie;

  factory CopyWith_Variables_Query_Movie.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_Movie;

  TRes call({String? slug});
}

class _CopyWithImpl_Variables_Query_Movie<TRes>
    implements CopyWith_Variables_Query_Movie<TRes> {
  _CopyWithImpl_Variables_Query_Movie(
    this._instance,
    this._then,
  );

  final Variables_Query_Movie _instance;

  final TRes Function(Variables_Query_Movie) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? slug = _undefined}) => _then(Variables_Query_Movie._({
        ..._instance._$data,
        if (slug != _undefined && slug != null) 'slug': (slug as String),
      }));
}

class _CopyWithStubImpl_Variables_Query_Movie<TRes>
    implements CopyWith_Variables_Query_Movie<TRes> {
  _CopyWithStubImpl_Variables_Query_Movie(this._res);

  TRes _res;

  call({String? slug}) => _res;
}

class Query_Movie {
  Query_Movie({
    this.movie,
    this.$__typename = 'Query',
  });

  factory Query_Movie.fromJson(Map<String, dynamic> json) {
    final l$movie = json['movie'];
    final l$$__typename = json['__typename'];
    return Query_Movie(
      movie: l$movie == null
          ? null
          : Query_Movie_movie.fromJson((l$movie as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_Movie_movie? movie;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$movie = movie;
    _resultData['movie'] = l$movie?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$movie = movie;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$movie,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_Movie || runtimeType != other.runtimeType) {
      return false;
    }
    final l$movie = movie;
    final lOther$movie = other.movie;
    if (l$movie != lOther$movie) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_Movie on Query_Movie {
  CopyWith_Query_Movie<Query_Movie> get copyWith => CopyWith_Query_Movie(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_Movie<TRes> {
  factory CopyWith_Query_Movie(
    Query_Movie instance,
    TRes Function(Query_Movie) then,
  ) = _CopyWithImpl_Query_Movie;

  factory CopyWith_Query_Movie.stub(TRes res) = _CopyWithStubImpl_Query_Movie;

  TRes call({
    Query_Movie_movie? movie,
    String? $__typename,
  });
  CopyWith_Query_Movie_movie<TRes> get movie;
}

class _CopyWithImpl_Query_Movie<TRes> implements CopyWith_Query_Movie<TRes> {
  _CopyWithImpl_Query_Movie(
    this._instance,
    this._then,
  );

  final Query_Movie _instance;

  final TRes Function(Query_Movie) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? movie = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_Movie(
        movie: movie == _undefined
            ? _instance.movie
            : (movie as Query_Movie_movie?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Query_Movie_movie<TRes> get movie {
    final local$movie = _instance.movie;
    return local$movie == null
        ? CopyWith_Query_Movie_movie.stub(_then(_instance))
        : CopyWith_Query_Movie_movie(local$movie, (e) => call(movie: e));
  }
}

class _CopyWithStubImpl_Query_Movie<TRes>
    implements CopyWith_Query_Movie<TRes> {
  _CopyWithStubImpl_Query_Movie(this._res);

  TRes _res;

  call({
    Query_Movie_movie? movie,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Query_Movie_movie<TRes> get movie =>
      CopyWith_Query_Movie_movie.stub(_res);
}

const documentNodeQueryMovie = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Movie'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'slug')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'movie'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'slug'),
            value: VariableNode(name: NameNode(value: 'slug')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'slug'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'boxOffice'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'budget'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'poster'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'rating'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'runningTime'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'summary'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'trailer'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'wiki'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'releaseDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'cinematographers'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'directors'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'distributors'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'editors'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'musicComposers'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'producers'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'screenwriters'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query_Movie _parserFn_Query_Movie(Map<String, dynamic> data) =>
    Query_Movie.fromJson(data);
typedef OnQueryComplete_Query_Movie = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query_Movie?,
);

class Options_Query_Movie extends graphql.QueryOptions<Query_Movie> {
  Options_Query_Movie({
    String? operationName,
    required Variables_Query_Movie variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query_Movie? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete_Query_Movie? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn_Query_Movie(data),
                  ),
          onError: onError,
          document: documentNodeQueryMovie,
          parserFn: _parserFn_Query_Movie,
        );

  final OnQueryComplete_Query_Movie? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions_Query_Movie extends graphql.WatchQueryOptions<Query_Movie> {
  WatchOptions_Query_Movie({
    String? operationName,
    required Variables_Query_Movie variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query_Movie? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryMovie,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn_Query_Movie,
        );
}

class FetchMoreOptions_Query_Movie extends graphql.FetchMoreOptions {
  FetchMoreOptions_Query_Movie({
    required graphql.UpdateQuery updateQuery,
    required Variables_Query_Movie variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryMovie,
        );
}

extension ClientExtension_Query_Movie on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query_Movie>> query_Movie(
          Options_Query_Movie options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query_Movie> watchQuery_Movie(
          WatchOptions_Query_Movie options) =>
      this.watchQuery(options);
  void writeQuery_Movie({
    required Query_Movie data,
    required Variables_Query_Movie variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryMovie),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query_Movie? readQuery_Movie({
    required Variables_Query_Movie variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryMovie),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query_Movie.fromJson(result);
  }
}

class Query_Movie_movie {
  Query_Movie_movie({
    this.slug,
    this.title,
    this.boxOffice,
    this.budget,
    this.poster,
    this.rating,
    this.runningTime,
    this.summary,
    this.trailer,
    this.wiki,
    this.releaseDate,
    this.cinematographers,
    this.directors,
    this.distributors,
    this.editors,
    this.musicComposers,
    this.producers,
    this.screenwriters,
    this.$__typename = 'Movie',
  });

  factory Query_Movie_movie.fromJson(Map<String, dynamic> json) {
    final l$slug = json['slug'];
    final l$title = json['title'];
    final l$boxOffice = json['boxOffice'];
    final l$budget = json['budget'];
    final l$poster = json['poster'];
    final l$rating = json['rating'];
    final l$runningTime = json['runningTime'];
    final l$summary = json['summary'];
    final l$trailer = json['trailer'];
    final l$wiki = json['wiki'];
    final l$releaseDate = json['releaseDate'];
    final l$cinematographers = json['cinematographers'];
    final l$directors = json['directors'];
    final l$distributors = json['distributors'];
    final l$editors = json['editors'];
    final l$musicComposers = json['musicComposers'];
    final l$producers = json['producers'];
    final l$screenwriters = json['screenwriters'];
    final l$$__typename = json['__typename'];
    return Query_Movie_movie(
      slug: (l$slug as String?),
      title: (l$title as String?),
      boxOffice: (l$boxOffice as String?),
      budget: (l$budget as String?),
      poster: (l$poster as String?),
      rating: (l$rating as String?),
      runningTime: (l$runningTime as String?),
      summary: (l$summary as String?),
      trailer: (l$trailer as String?),
      wiki: (l$wiki as String?),
      releaseDate: (l$releaseDate as String?),
      cinematographers: (l$cinematographers as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList(),
      directors:
          (l$directors as List<dynamic>?)?.map((e) => (e as String)).toList(),
      distributors: (l$distributors as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList(),
      editors:
          (l$editors as List<dynamic>?)?.map((e) => (e as String)).toList(),
      musicComposers: (l$musicComposers as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList(),
      producers:
          (l$producers as List<dynamic>?)?.map((e) => (e as String)).toList(),
      screenwriters: (l$screenwriters as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? slug;

  final String? title;

  final String? boxOffice;

  final String? budget;

  final String? poster;

  final String? rating;

  final String? runningTime;

  final String? summary;

  final String? trailer;

  final String? wiki;

  final String? releaseDate;

  final List<String>? cinematographers;

  final List<String>? directors;

  final List<String>? distributors;

  final List<String>? editors;

  final List<String>? musicComposers;

  final List<String>? producers;

  final List<String>? screenwriters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$slug = slug;
    _resultData['slug'] = l$slug;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$boxOffice = boxOffice;
    _resultData['boxOffice'] = l$boxOffice;
    final l$budget = budget;
    _resultData['budget'] = l$budget;
    final l$poster = poster;
    _resultData['poster'] = l$poster;
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$runningTime = runningTime;
    _resultData['runningTime'] = l$runningTime;
    final l$summary = summary;
    _resultData['summary'] = l$summary;
    final l$trailer = trailer;
    _resultData['trailer'] = l$trailer;
    final l$wiki = wiki;
    _resultData['wiki'] = l$wiki;
    final l$releaseDate = releaseDate;
    _resultData['releaseDate'] = l$releaseDate;
    final l$cinematographers = cinematographers;
    _resultData['cinematographers'] =
        l$cinematographers?.map((e) => e).toList();
    final l$directors = directors;
    _resultData['directors'] = l$directors?.map((e) => e).toList();
    final l$distributors = distributors;
    _resultData['distributors'] = l$distributors?.map((e) => e).toList();
    final l$editors = editors;
    _resultData['editors'] = l$editors?.map((e) => e).toList();
    final l$musicComposers = musicComposers;
    _resultData['musicComposers'] = l$musicComposers?.map((e) => e).toList();
    final l$producers = producers;
    _resultData['producers'] = l$producers?.map((e) => e).toList();
    final l$screenwriters = screenwriters;
    _resultData['screenwriters'] = l$screenwriters?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$slug = slug;
    final l$title = title;
    final l$boxOffice = boxOffice;
    final l$budget = budget;
    final l$poster = poster;
    final l$rating = rating;
    final l$runningTime = runningTime;
    final l$summary = summary;
    final l$trailer = trailer;
    final l$wiki = wiki;
    final l$releaseDate = releaseDate;
    final l$cinematographers = cinematographers;
    final l$directors = directors;
    final l$distributors = distributors;
    final l$editors = editors;
    final l$musicComposers = musicComposers;
    final l$producers = producers;
    final l$screenwriters = screenwriters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$slug,
      l$title,
      l$boxOffice,
      l$budget,
      l$poster,
      l$rating,
      l$runningTime,
      l$summary,
      l$trailer,
      l$wiki,
      l$releaseDate,
      l$cinematographers == null
          ? null
          : Object.hashAll(l$cinematographers.map((v) => v)),
      l$directors == null ? null : Object.hashAll(l$directors.map((v) => v)),
      l$distributors == null
          ? null
          : Object.hashAll(l$distributors.map((v) => v)),
      l$editors == null ? null : Object.hashAll(l$editors.map((v) => v)),
      l$musicComposers == null
          ? null
          : Object.hashAll(l$musicComposers.map((v) => v)),
      l$producers == null ? null : Object.hashAll(l$producers.map((v) => v)),
      l$screenwriters == null
          ? null
          : Object.hashAll(l$screenwriters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_Movie_movie || runtimeType != other.runtimeType) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$boxOffice = boxOffice;
    final lOther$boxOffice = other.boxOffice;
    if (l$boxOffice != lOther$boxOffice) {
      return false;
    }
    final l$budget = budget;
    final lOther$budget = other.budget;
    if (l$budget != lOther$budget) {
      return false;
    }
    final l$poster = poster;
    final lOther$poster = other.poster;
    if (l$poster != lOther$poster) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$runningTime = runningTime;
    final lOther$runningTime = other.runningTime;
    if (l$runningTime != lOther$runningTime) {
      return false;
    }
    final l$summary = summary;
    final lOther$summary = other.summary;
    if (l$summary != lOther$summary) {
      return false;
    }
    final l$trailer = trailer;
    final lOther$trailer = other.trailer;
    if (l$trailer != lOther$trailer) {
      return false;
    }
    final l$wiki = wiki;
    final lOther$wiki = other.wiki;
    if (l$wiki != lOther$wiki) {
      return false;
    }
    final l$releaseDate = releaseDate;
    final lOther$releaseDate = other.releaseDate;
    if (l$releaseDate != lOther$releaseDate) {
      return false;
    }
    final l$cinematographers = cinematographers;
    final lOther$cinematographers = other.cinematographers;
    if (l$cinematographers != null && lOther$cinematographers != null) {
      if (l$cinematographers.length != lOther$cinematographers.length) {
        return false;
      }
      for (int i = 0; i < l$cinematographers.length; i++) {
        final l$cinematographers$entry = l$cinematographers[i];
        final lOther$cinematographers$entry = lOther$cinematographers[i];
        if (l$cinematographers$entry != lOther$cinematographers$entry) {
          return false;
        }
      }
    } else if (l$cinematographers != lOther$cinematographers) {
      return false;
    }
    final l$directors = directors;
    final lOther$directors = other.directors;
    if (l$directors != null && lOther$directors != null) {
      if (l$directors.length != lOther$directors.length) {
        return false;
      }
      for (int i = 0; i < l$directors.length; i++) {
        final l$directors$entry = l$directors[i];
        final lOther$directors$entry = lOther$directors[i];
        if (l$directors$entry != lOther$directors$entry) {
          return false;
        }
      }
    } else if (l$directors != lOther$directors) {
      return false;
    }
    final l$distributors = distributors;
    final lOther$distributors = other.distributors;
    if (l$distributors != null && lOther$distributors != null) {
      if (l$distributors.length != lOther$distributors.length) {
        return false;
      }
      for (int i = 0; i < l$distributors.length; i++) {
        final l$distributors$entry = l$distributors[i];
        final lOther$distributors$entry = lOther$distributors[i];
        if (l$distributors$entry != lOther$distributors$entry) {
          return false;
        }
      }
    } else if (l$distributors != lOther$distributors) {
      return false;
    }
    final l$editors = editors;
    final lOther$editors = other.editors;
    if (l$editors != null && lOther$editors != null) {
      if (l$editors.length != lOther$editors.length) {
        return false;
      }
      for (int i = 0; i < l$editors.length; i++) {
        final l$editors$entry = l$editors[i];
        final lOther$editors$entry = lOther$editors[i];
        if (l$editors$entry != lOther$editors$entry) {
          return false;
        }
      }
    } else if (l$editors != lOther$editors) {
      return false;
    }
    final l$musicComposers = musicComposers;
    final lOther$musicComposers = other.musicComposers;
    if (l$musicComposers != null && lOther$musicComposers != null) {
      if (l$musicComposers.length != lOther$musicComposers.length) {
        return false;
      }
      for (int i = 0; i < l$musicComposers.length; i++) {
        final l$musicComposers$entry = l$musicComposers[i];
        final lOther$musicComposers$entry = lOther$musicComposers[i];
        if (l$musicComposers$entry != lOther$musicComposers$entry) {
          return false;
        }
      }
    } else if (l$musicComposers != lOther$musicComposers) {
      return false;
    }
    final l$producers = producers;
    final lOther$producers = other.producers;
    if (l$producers != null && lOther$producers != null) {
      if (l$producers.length != lOther$producers.length) {
        return false;
      }
      for (int i = 0; i < l$producers.length; i++) {
        final l$producers$entry = l$producers[i];
        final lOther$producers$entry = lOther$producers[i];
        if (l$producers$entry != lOther$producers$entry) {
          return false;
        }
      }
    } else if (l$producers != lOther$producers) {
      return false;
    }
    final l$screenwriters = screenwriters;
    final lOther$screenwriters = other.screenwriters;
    if (l$screenwriters != null && lOther$screenwriters != null) {
      if (l$screenwriters.length != lOther$screenwriters.length) {
        return false;
      }
      for (int i = 0; i < l$screenwriters.length; i++) {
        final l$screenwriters$entry = l$screenwriters[i];
        final lOther$screenwriters$entry = lOther$screenwriters[i];
        if (l$screenwriters$entry != lOther$screenwriters$entry) {
          return false;
        }
      }
    } else if (l$screenwriters != lOther$screenwriters) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_Movie_movie on Query_Movie_movie {
  CopyWith_Query_Movie_movie<Query_Movie_movie> get copyWith =>
      CopyWith_Query_Movie_movie(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_Movie_movie<TRes> {
  factory CopyWith_Query_Movie_movie(
    Query_Movie_movie instance,
    TRes Function(Query_Movie_movie) then,
  ) = _CopyWithImpl_Query_Movie_movie;

  factory CopyWith_Query_Movie_movie.stub(TRes res) =
      _CopyWithStubImpl_Query_Movie_movie;

  TRes call({
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
    List<String>? cinematographers,
    List<String>? directors,
    List<String>? distributors,
    List<String>? editors,
    List<String>? musicComposers,
    List<String>? producers,
    List<String>? screenwriters,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_Movie_movie<TRes>
    implements CopyWith_Query_Movie_movie<TRes> {
  _CopyWithImpl_Query_Movie_movie(
    this._instance,
    this._then,
  );

  final Query_Movie_movie _instance;

  final TRes Function(Query_Movie_movie) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? slug = _undefined,
    Object? title = _undefined,
    Object? boxOffice = _undefined,
    Object? budget = _undefined,
    Object? poster = _undefined,
    Object? rating = _undefined,
    Object? runningTime = _undefined,
    Object? summary = _undefined,
    Object? trailer = _undefined,
    Object? wiki = _undefined,
    Object? releaseDate = _undefined,
    Object? cinematographers = _undefined,
    Object? directors = _undefined,
    Object? distributors = _undefined,
    Object? editors = _undefined,
    Object? musicComposers = _undefined,
    Object? producers = _undefined,
    Object? screenwriters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_Movie_movie(
        slug: slug == _undefined ? _instance.slug : (slug as String?),
        title: title == _undefined ? _instance.title : (title as String?),
        boxOffice: boxOffice == _undefined
            ? _instance.boxOffice
            : (boxOffice as String?),
        budget: budget == _undefined ? _instance.budget : (budget as String?),
        poster: poster == _undefined ? _instance.poster : (poster as String?),
        rating: rating == _undefined ? _instance.rating : (rating as String?),
        runningTime: runningTime == _undefined
            ? _instance.runningTime
            : (runningTime as String?),
        summary:
            summary == _undefined ? _instance.summary : (summary as String?),
        trailer:
            trailer == _undefined ? _instance.trailer : (trailer as String?),
        wiki: wiki == _undefined ? _instance.wiki : (wiki as String?),
        releaseDate: releaseDate == _undefined
            ? _instance.releaseDate
            : (releaseDate as String?),
        cinematographers: cinematographers == _undefined
            ? _instance.cinematographers
            : (cinematographers as List<String>?),
        directors: directors == _undefined
            ? _instance.directors
            : (directors as List<String>?),
        distributors: distributors == _undefined
            ? _instance.distributors
            : (distributors as List<String>?),
        editors: editors == _undefined
            ? _instance.editors
            : (editors as List<String>?),
        musicComposers: musicComposers == _undefined
            ? _instance.musicComposers
            : (musicComposers as List<String>?),
        producers: producers == _undefined
            ? _instance.producers
            : (producers as List<String>?),
        screenwriters: screenwriters == _undefined
            ? _instance.screenwriters
            : (screenwriters as List<String>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_Movie_movie<TRes>
    implements CopyWith_Query_Movie_movie<TRes> {
  _CopyWithStubImpl_Query_Movie_movie(this._res);

  TRes _res;

  call({
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
    List<String>? cinematographers,
    List<String>? directors,
    List<String>? distributors,
    List<String>? editors,
    List<String>? musicComposers,
    List<String>? producers,
    List<String>? screenwriters,
    String? $__typename,
  }) =>
      _res;
}

import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query_Movies {
  Query_Movies({
    required this.movies,
    this.$__typename = 'Query',
  });

  factory Query_Movies.fromJson(Map<String, dynamic> json) {
    final l$movies = json['movies'];
    final l$$__typename = json['__typename'];
    return Query_Movies(
      movies: Query_Movies_movies.fromJson((l$movies as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_Movies_movies movies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$movies = movies;
    _resultData['movies'] = l$movies.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$movies = movies;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$movies,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_Movies || runtimeType != other.runtimeType) {
      return false;
    }
    final l$movies = movies;
    final lOther$movies = other.movies;
    if (l$movies != lOther$movies) {
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

extension UtilityExtension_Query_Movies on Query_Movies {
  CopyWith_Query_Movies<Query_Movies> get copyWith => CopyWith_Query_Movies(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_Movies<TRes> {
  factory CopyWith_Query_Movies(
    Query_Movies instance,
    TRes Function(Query_Movies) then,
  ) = _CopyWithImpl_Query_Movies;

  factory CopyWith_Query_Movies.stub(TRes res) = _CopyWithStubImpl_Query_Movies;

  TRes call({
    Query_Movies_movies? movies,
    String? $__typename,
  });
  CopyWith_Query_Movies_movies<TRes> get movies;
}

class _CopyWithImpl_Query_Movies<TRes> implements CopyWith_Query_Movies<TRes> {
  _CopyWithImpl_Query_Movies(
    this._instance,
    this._then,
  );

  final Query_Movies _instance;

  final TRes Function(Query_Movies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? movies = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_Movies(
        movies: movies == _undefined || movies == null
            ? _instance.movies
            : (movies as Query_Movies_movies),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Query_Movies_movies<TRes> get movies {
    final local$movies = _instance.movies;
    return CopyWith_Query_Movies_movies(local$movies, (e) => call(movies: e));
  }
}

class _CopyWithStubImpl_Query_Movies<TRes>
    implements CopyWith_Query_Movies<TRes> {
  _CopyWithStubImpl_Query_Movies(this._res);

  TRes _res;

  call({
    Query_Movies_movies? movies,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Query_Movies_movies<TRes> get movies =>
      CopyWith_Query_Movies_movies.stub(_res);
}

const documentNodeQueryMovies = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Movies'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'movies'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'totalCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'nodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'title'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'slug'),
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
Query_Movies _parserFn_Query_Movies(Map<String, dynamic> data) =>
    Query_Movies.fromJson(data);
typedef OnQueryComplete_Query_Movies = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query_Movies?,
);

class Options_Query_Movies extends graphql.QueryOptions<Query_Movies> {
  Options_Query_Movies({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query_Movies? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete_Query_Movies? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
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
                    data == null ? null : _parserFn_Query_Movies(data),
                  ),
          onError: onError,
          document: documentNodeQueryMovies,
          parserFn: _parserFn_Query_Movies,
        );

  final OnQueryComplete_Query_Movies? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions_Query_Movies
    extends graphql.WatchQueryOptions<Query_Movies> {
  WatchOptions_Query_Movies({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query_Movies? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryMovies,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn_Query_Movies,
        );
}

class FetchMoreOptions_Query_Movies extends graphql.FetchMoreOptions {
  FetchMoreOptions_Query_Movies({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryMovies,
        );
}

extension ClientExtension_Query_Movies on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query_Movies>> query_Movies(
          [Options_Query_Movies? options]) async =>
      await this.query(options ?? Options_Query_Movies());
  graphql.ObservableQuery<Query_Movies> watchQuery_Movies(
          [WatchOptions_Query_Movies? options]) =>
      this.watchQuery(options ?? WatchOptions_Query_Movies());
  void writeQuery_Movies({
    required Query_Movies data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryMovies)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query_Movies? readQuery_Movies({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryMovies)),
      optimistic: optimistic,
    );
    return result == null ? null : Query_Movies.fromJson(result);
  }
}

class Query_Movies_movies {
  Query_Movies_movies({
    required this.totalCount,
    this.nodes,
    this.$__typename = 'MovieConnection',
  });

  factory Query_Movies_movies.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query_Movies_movies(
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query_Movies_movies_nodes.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Query_Movies_movies_nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_Movies_movies || runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension_Query_Movies_movies on Query_Movies_movies {
  CopyWith_Query_Movies_movies<Query_Movies_movies> get copyWith =>
      CopyWith_Query_Movies_movies(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_Movies_movies<TRes> {
  factory CopyWith_Query_Movies_movies(
    Query_Movies_movies instance,
    TRes Function(Query_Movies_movies) then,
  ) = _CopyWithImpl_Query_Movies_movies;

  factory CopyWith_Query_Movies_movies.stub(TRes res) =
      _CopyWithStubImpl_Query_Movies_movies;

  TRes call({
    int? totalCount,
    List<Query_Movies_movies_nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query_Movies_movies_nodes?>? Function(
              Iterable<
                  CopyWith_Query_Movies_movies_nodes<
                      Query_Movies_movies_nodes>?>?)
          _fn);
}

class _CopyWithImpl_Query_Movies_movies<TRes>
    implements CopyWith_Query_Movies_movies<TRes> {
  _CopyWithImpl_Query_Movies_movies(
    this._instance,
    this._then,
  );

  final Query_Movies_movies _instance;

  final TRes Function(Query_Movies_movies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_Movies_movies(
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query_Movies_movies_nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query_Movies_movies_nodes?>? Function(
                  Iterable<
                      CopyWith_Query_Movies_movies_nodes<
                          Query_Movies_movies_nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith_Query_Movies_movies_nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl_Query_Movies_movies<TRes>
    implements CopyWith_Query_Movies_movies<TRes> {
  _CopyWithStubImpl_Query_Movies_movies(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Query_Movies_movies_nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Query_Movies_movies_nodes {
  Query_Movies_movies_nodes({
    this.title,
    this.slug,
    this.$__typename = 'Movie',
  });

  factory Query_Movies_movies_nodes.fromJson(Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$slug = json['slug'];
    final l$$__typename = json['__typename'];
    return Query_Movies_movies_nodes(
      title: (l$title as String?),
      slug: (l$slug as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? title;

  final String? slug;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$slug = slug;
    _resultData['slug'] = l$slug;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$slug = slug;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$slug,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_Movies_movies_nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) {
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

extension UtilityExtension_Query_Movies_movies_nodes
    on Query_Movies_movies_nodes {
  CopyWith_Query_Movies_movies_nodes<Query_Movies_movies_nodes> get copyWith =>
      CopyWith_Query_Movies_movies_nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_Movies_movies_nodes<TRes> {
  factory CopyWith_Query_Movies_movies_nodes(
    Query_Movies_movies_nodes instance,
    TRes Function(Query_Movies_movies_nodes) then,
  ) = _CopyWithImpl_Query_Movies_movies_nodes;

  factory CopyWith_Query_Movies_movies_nodes.stub(TRes res) =
      _CopyWithStubImpl_Query_Movies_movies_nodes;

  TRes call({
    String? title,
    String? slug,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_Movies_movies_nodes<TRes>
    implements CopyWith_Query_Movies_movies_nodes<TRes> {
  _CopyWithImpl_Query_Movies_movies_nodes(
    this._instance,
    this._then,
  );

  final Query_Movies_movies_nodes _instance;

  final TRes Function(Query_Movies_movies_nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? slug = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_Movies_movies_nodes(
        title: title == _undefined ? _instance.title : (title as String?),
        slug: slug == _undefined ? _instance.slug : (slug as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_Movies_movies_nodes<TRes>
    implements CopyWith_Query_Movies_movies_nodes<TRes> {
  _CopyWithStubImpl_Query_Movies_movies_nodes(this._res);

  TRes _res;

  call({
    String? title,
    String? slug,
    String? $__typename,
  }) =>
      _res;
}

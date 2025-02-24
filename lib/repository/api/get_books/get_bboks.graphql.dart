import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query_Bboks {
  Query_Bboks({
    required this.books,
    this.$__typename = 'Query',
  });

  factory Query_Bboks.fromJson(Map<String, dynamic> json) {
    final l$books = json['books'];
    final l$$__typename = json['__typename'];
    return Query_Bboks(
      books: Query_Bboks_books.fromJson((l$books as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_Bboks_books books;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$books = books;
    _resultData['books'] = l$books.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$books = books;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$books,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_Bboks || runtimeType != other.runtimeType) {
      return false;
    }
    final l$books = books;
    final lOther$books = other.books;
    if (l$books != lOther$books) {
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

extension UtilityExtension_Query_Bboks on Query_Bboks {
  CopyWith_Query_Bboks<Query_Bboks> get copyWith => CopyWith_Query_Bboks(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_Bboks<TRes> {
  factory CopyWith_Query_Bboks(
    Query_Bboks instance,
    TRes Function(Query_Bboks) then,
  ) = _CopyWithImpl_Query_Bboks;

  factory CopyWith_Query_Bboks.stub(TRes res) = _CopyWithStubImpl_Query_Bboks;

  TRes call({
    Query_Bboks_books? books,
    String? $__typename,
  });
  CopyWith_Query_Bboks_books<TRes> get books;
}

class _CopyWithImpl_Query_Bboks<TRes> implements CopyWith_Query_Bboks<TRes> {
  _CopyWithImpl_Query_Bboks(
    this._instance,
    this._then,
  );

  final Query_Bboks _instance;

  final TRes Function(Query_Bboks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? books = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_Bboks(
        books: books == _undefined || books == null
            ? _instance.books
            : (books as Query_Bboks_books),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Query_Bboks_books<TRes> get books {
    final local$books = _instance.books;
    return CopyWith_Query_Bboks_books(local$books, (e) => call(books: e));
  }
}

class _CopyWithStubImpl_Query_Bboks<TRes>
    implements CopyWith_Query_Bboks<TRes> {
  _CopyWithStubImpl_Query_Bboks(this._res);

  TRes _res;

  call({
    Query_Bboks_books? books,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Query_Bboks_books<TRes> get books =>
      CopyWith_Query_Bboks_books.stub(_res);
}

const documentNodeQueryBboks = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Bboks'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'books'),
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
Query_Bboks _parserFn_Query_Bboks(Map<String, dynamic> data) =>
    Query_Bboks.fromJson(data);
typedef OnQueryComplete_Query_Bboks = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query_Bboks?,
);

class Options_Query_Bboks extends graphql.QueryOptions<Query_Bboks> {
  Options_Query_Bboks({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query_Bboks? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete_Query_Bboks? onComplete,
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
                    data == null ? null : _parserFn_Query_Bboks(data),
                  ),
          onError: onError,
          document: documentNodeQueryBboks,
          parserFn: _parserFn_Query_Bboks,
        );

  final OnQueryComplete_Query_Bboks? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions_Query_Bboks extends graphql.WatchQueryOptions<Query_Bboks> {
  WatchOptions_Query_Bboks({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query_Bboks? typedOptimisticResult,
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
          document: documentNodeQueryBboks,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn_Query_Bboks,
        );
}

class FetchMoreOptions_Query_Bboks extends graphql.FetchMoreOptions {
  FetchMoreOptions_Query_Bboks({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryBboks,
        );
}

extension ClientExtension_Query_Bboks on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query_Bboks>> query_Bboks(
          [Options_Query_Bboks? options]) async =>
      await this.query(options ?? Options_Query_Bboks());
  graphql.ObservableQuery<Query_Bboks> watchQuery_Bboks(
          [WatchOptions_Query_Bboks? options]) =>
      this.watchQuery(options ?? WatchOptions_Query_Bboks());
  void writeQuery_Bboks({
    required Query_Bboks data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryBboks)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query_Bboks? readQuery_Bboks({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryBboks)),
      optimistic: optimistic,
    );
    return result == null ? null : Query_Bboks.fromJson(result);
  }
}

class Query_Bboks_books {
  Query_Bboks_books({
    required this.totalCount,
    this.nodes,
    this.$__typename = 'BookConnection',
  });

  factory Query_Bboks_books.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query_Bboks_books(
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query_Bboks_books_nodes.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Query_Bboks_books_nodes?>? nodes;

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
    if (other is! Query_Bboks_books || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_Bboks_books on Query_Bboks_books {
  CopyWith_Query_Bboks_books<Query_Bboks_books> get copyWith =>
      CopyWith_Query_Bboks_books(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_Bboks_books<TRes> {
  factory CopyWith_Query_Bboks_books(
    Query_Bboks_books instance,
    TRes Function(Query_Bboks_books) then,
  ) = _CopyWithImpl_Query_Bboks_books;

  factory CopyWith_Query_Bboks_books.stub(TRes res) =
      _CopyWithStubImpl_Query_Bboks_books;

  TRes call({
    int? totalCount,
    List<Query_Bboks_books_nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query_Bboks_books_nodes?>? Function(
              Iterable<
                  CopyWith_Query_Bboks_books_nodes<Query_Bboks_books_nodes>?>?)
          _fn);
}

class _CopyWithImpl_Query_Bboks_books<TRes>
    implements CopyWith_Query_Bboks_books<TRes> {
  _CopyWithImpl_Query_Bboks_books(
    this._instance,
    this._then,
  );

  final Query_Bboks_books _instance;

  final TRes Function(Query_Bboks_books) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_Bboks_books(
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query_Bboks_books_nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query_Bboks_books_nodes?>? Function(
                  Iterable<
                      CopyWith_Query_Bboks_books_nodes<
                          Query_Bboks_books_nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith_Query_Bboks_books_nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl_Query_Bboks_books<TRes>
    implements CopyWith_Query_Bboks_books<TRes> {
  _CopyWithStubImpl_Query_Bboks_books(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Query_Bboks_books_nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Query_Bboks_books_nodes {
  Query_Bboks_books_nodes({
    this.title,
    this.slug,
    this.$__typename = 'Book',
  });

  factory Query_Bboks_books_nodes.fromJson(Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$slug = json['slug'];
    final l$$__typename = json['__typename'];
    return Query_Bboks_books_nodes(
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
    if (other is! Query_Bboks_books_nodes || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Query_Bboks_books_nodes on Query_Bboks_books_nodes {
  CopyWith_Query_Bboks_books_nodes<Query_Bboks_books_nodes> get copyWith =>
      CopyWith_Query_Bboks_books_nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_Bboks_books_nodes<TRes> {
  factory CopyWith_Query_Bboks_books_nodes(
    Query_Bboks_books_nodes instance,
    TRes Function(Query_Bboks_books_nodes) then,
  ) = _CopyWithImpl_Query_Bboks_books_nodes;

  factory CopyWith_Query_Bboks_books_nodes.stub(TRes res) =
      _CopyWithStubImpl_Query_Bboks_books_nodes;

  TRes call({
    String? title,
    String? slug,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_Bboks_books_nodes<TRes>
    implements CopyWith_Query_Bboks_books_nodes<TRes> {
  _CopyWithImpl_Query_Bboks_books_nodes(
    this._instance,
    this._then,
  );

  final Query_Bboks_books_nodes _instance;

  final TRes Function(Query_Bboks_books_nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? slug = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_Bboks_books_nodes(
        title: title == _undefined ? _instance.title : (title as String?),
        slug: slug == _undefined ? _instance.slug : (slug as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_Bboks_books_nodes<TRes>
    implements CopyWith_Query_Bboks_books_nodes<TRes> {
  _CopyWithStubImpl_Query_Bboks_books_nodes(this._res);

  TRes _res;

  call({
    String? title,
    String? slug,
    String? $__typename,
  }) =>
      _res;
}

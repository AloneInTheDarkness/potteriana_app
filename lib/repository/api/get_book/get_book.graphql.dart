import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables_Query_Book {
  factory Variables_Query_Book({required String slug}) =>
      Variables_Query_Book._({
        r'slug': slug,
      });

  Variables_Query_Book._(this._$data);

  factory Variables_Query_Book.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$slug = data['slug'];
    result$data['slug'] = (l$slug as String);
    return Variables_Query_Book._(result$data);
  }

  Map<String, dynamic> _$data;

  String get slug => (_$data['slug'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$slug = slug;
    result$data['slug'] = l$slug;
    return result$data;
  }

  CopyWith_Variables_Query_Book<Variables_Query_Book> get copyWith =>
      CopyWith_Variables_Query_Book(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_Book || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Variables_Query_Book<TRes> {
  factory CopyWith_Variables_Query_Book(
    Variables_Query_Book instance,
    TRes Function(Variables_Query_Book) then,
  ) = _CopyWithImpl_Variables_Query_Book;

  factory CopyWith_Variables_Query_Book.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_Book;

  TRes call({String? slug});
}

class _CopyWithImpl_Variables_Query_Book<TRes>
    implements CopyWith_Variables_Query_Book<TRes> {
  _CopyWithImpl_Variables_Query_Book(
    this._instance,
    this._then,
  );

  final Variables_Query_Book _instance;

  final TRes Function(Variables_Query_Book) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? slug = _undefined}) => _then(Variables_Query_Book._({
        ..._instance._$data,
        if (slug != _undefined && slug != null) 'slug': (slug as String),
      }));
}

class _CopyWithStubImpl_Variables_Query_Book<TRes>
    implements CopyWith_Variables_Query_Book<TRes> {
  _CopyWithStubImpl_Variables_Query_Book(this._res);

  TRes _res;

  call({String? slug}) => _res;
}

class Query_Book {
  Query_Book({
    this.book,
    this.$__typename = 'Query',
  });

  factory Query_Book.fromJson(Map<String, dynamic> json) {
    final l$book = json['book'];
    final l$$__typename = json['__typename'];
    return Query_Book(
      book: l$book == null
          ? null
          : Query_Book_book.fromJson((l$book as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_Book_book? book;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$book = book;
    _resultData['book'] = l$book?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$book = book;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$book,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_Book || runtimeType != other.runtimeType) {
      return false;
    }
    final l$book = book;
    final lOther$book = other.book;
    if (l$book != lOther$book) {
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

extension UtilityExtension_Query_Book on Query_Book {
  CopyWith_Query_Book<Query_Book> get copyWith => CopyWith_Query_Book(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_Book<TRes> {
  factory CopyWith_Query_Book(
    Query_Book instance,
    TRes Function(Query_Book) then,
  ) = _CopyWithImpl_Query_Book;

  factory CopyWith_Query_Book.stub(TRes res) = _CopyWithStubImpl_Query_Book;

  TRes call({
    Query_Book_book? book,
    String? $__typename,
  });
  CopyWith_Query_Book_book<TRes> get book;
}

class _CopyWithImpl_Query_Book<TRes> implements CopyWith_Query_Book<TRes> {
  _CopyWithImpl_Query_Book(
    this._instance,
    this._then,
  );

  final Query_Book _instance;

  final TRes Function(Query_Book) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? book = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_Book(
        book: book == _undefined ? _instance.book : (book as Query_Book_book?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Query_Book_book<TRes> get book {
    final local$book = _instance.book;
    return local$book == null
        ? CopyWith_Query_Book_book.stub(_then(_instance))
        : CopyWith_Query_Book_book(local$book, (e) => call(book: e));
  }
}

class _CopyWithStubImpl_Query_Book<TRes> implements CopyWith_Query_Book<TRes> {
  _CopyWithStubImpl_Query_Book(this._res);

  TRes _res;

  call({
    Query_Book_book? book,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Query_Book_book<TRes> get book =>
      CopyWith_Query_Book_book.stub(_res);
}

const documentNodeQueryBook = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Book'),
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
        name: NameNode(value: 'book'),
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
            name: NameNode(value: 'author'),
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
            name: NameNode(value: 'chapters'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'edges'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'cursor'),
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
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'pageInfo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'hasNextPage'),
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
                name: NameNode(value: 'totalCount'),
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
            name: NameNode(value: 'title'),
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
            name: NameNode(value: 'cover'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'dedication'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'pages'),
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
            name: NameNode(value: 'wiki'),
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
Query_Book _parserFn_Query_Book(Map<String, dynamic> data) =>
    Query_Book.fromJson(data);
typedef OnQueryComplete_Query_Book = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query_Book?,
);

class Options_Query_Book extends graphql.QueryOptions<Query_Book> {
  Options_Query_Book({
    String? operationName,
    required Variables_Query_Book variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query_Book? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete_Query_Book? onComplete,
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
                    data == null ? null : _parserFn_Query_Book(data),
                  ),
          onError: onError,
          document: documentNodeQueryBook,
          parserFn: _parserFn_Query_Book,
        );

  final OnQueryComplete_Query_Book? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions_Query_Book extends graphql.WatchQueryOptions<Query_Book> {
  WatchOptions_Query_Book({
    String? operationName,
    required Variables_Query_Book variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query_Book? typedOptimisticResult,
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
          document: documentNodeQueryBook,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn_Query_Book,
        );
}

class FetchMoreOptions_Query_Book extends graphql.FetchMoreOptions {
  FetchMoreOptions_Query_Book({
    required graphql.UpdateQuery updateQuery,
    required Variables_Query_Book variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryBook,
        );
}

extension ClientExtension_Query_Book on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query_Book>> query_Book(
          Options_Query_Book options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query_Book> watchQuery_Book(
          WatchOptions_Query_Book options) =>
      this.watchQuery(options);
  void writeQuery_Book({
    required Query_Book data,
    required Variables_Query_Book variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryBook),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query_Book? readQuery_Book({
    required Variables_Query_Book variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryBook),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query_Book.fromJson(result);
  }
}

class Query_Book_book {
  Query_Book_book({
    this.author,
    this.slug,
    required this.chapters,
    this.title,
    this.summary,
    this.cover,
    this.dedication,
    this.pages,
    this.releaseDate,
    this.wiki,
    this.$__typename = 'Book',
  });

  factory Query_Book_book.fromJson(Map<String, dynamic> json) {
    final l$author = json['author'];
    final l$slug = json['slug'];
    final l$chapters = json['chapters'];
    final l$title = json['title'];
    final l$summary = json['summary'];
    final l$cover = json['cover'];
    final l$dedication = json['dedication'];
    final l$pages = json['pages'];
    final l$releaseDate = json['releaseDate'];
    final l$wiki = json['wiki'];
    final l$$__typename = json['__typename'];
    return Query_Book_book(
      author: (l$author as String?),
      slug: (l$slug as String?),
      chapters: Query_Book_book_chapters.fromJson(
          (l$chapters as Map<String, dynamic>)),
      title: (l$title as String?),
      summary: (l$summary as String?),
      cover: (l$cover as String?),
      dedication: (l$dedication as String?),
      pages: (l$pages as int?),
      releaseDate: (l$releaseDate as String?),
      wiki: (l$wiki as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? author;

  final String? slug;

  final Query_Book_book_chapters chapters;

  final String? title;

  final String? summary;

  final String? cover;

  final String? dedication;

  final int? pages;

  final String? releaseDate;

  final String? wiki;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$author = author;
    _resultData['author'] = l$author;
    final l$slug = slug;
    _resultData['slug'] = l$slug;
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters.toJson();
    final l$title = title;
    _resultData['title'] = l$title;
    final l$summary = summary;
    _resultData['summary'] = l$summary;
    final l$cover = cover;
    _resultData['cover'] = l$cover;
    final l$dedication = dedication;
    _resultData['dedication'] = l$dedication;
    final l$pages = pages;
    _resultData['pages'] = l$pages;
    final l$releaseDate = releaseDate;
    _resultData['releaseDate'] = l$releaseDate;
    final l$wiki = wiki;
    _resultData['wiki'] = l$wiki;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$author = author;
    final l$slug = slug;
    final l$chapters = chapters;
    final l$title = title;
    final l$summary = summary;
    final l$cover = cover;
    final l$dedication = dedication;
    final l$pages = pages;
    final l$releaseDate = releaseDate;
    final l$wiki = wiki;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$author,
      l$slug,
      l$chapters,
      l$title,
      l$summary,
      l$cover,
      l$dedication,
      l$pages,
      l$releaseDate,
      l$wiki,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_Book_book || runtimeType != other.runtimeType) {
      return false;
    }
    final l$author = author;
    final lOther$author = other.author;
    if (l$author != lOther$author) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$chapters = chapters;
    final lOther$chapters = other.chapters;
    if (l$chapters != lOther$chapters) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$summary = summary;
    final lOther$summary = other.summary;
    if (l$summary != lOther$summary) {
      return false;
    }
    final l$cover = cover;
    final lOther$cover = other.cover;
    if (l$cover != lOther$cover) {
      return false;
    }
    final l$dedication = dedication;
    final lOther$dedication = other.dedication;
    if (l$dedication != lOther$dedication) {
      return false;
    }
    final l$pages = pages;
    final lOther$pages = other.pages;
    if (l$pages != lOther$pages) {
      return false;
    }
    final l$releaseDate = releaseDate;
    final lOther$releaseDate = other.releaseDate;
    if (l$releaseDate != lOther$releaseDate) {
      return false;
    }
    final l$wiki = wiki;
    final lOther$wiki = other.wiki;
    if (l$wiki != lOther$wiki) {
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

extension UtilityExtension_Query_Book_book on Query_Book_book {
  CopyWith_Query_Book_book<Query_Book_book> get copyWith =>
      CopyWith_Query_Book_book(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_Book_book<TRes> {
  factory CopyWith_Query_Book_book(
    Query_Book_book instance,
    TRes Function(Query_Book_book) then,
  ) = _CopyWithImpl_Query_Book_book;

  factory CopyWith_Query_Book_book.stub(TRes res) =
      _CopyWithStubImpl_Query_Book_book;

  TRes call({
    String? author,
    String? slug,
    Query_Book_book_chapters? chapters,
    String? title,
    String? summary,
    String? cover,
    String? dedication,
    int? pages,
    String? releaseDate,
    String? wiki,
    String? $__typename,
  });
  CopyWith_Query_Book_book_chapters<TRes> get chapters;
}

class _CopyWithImpl_Query_Book_book<TRes>
    implements CopyWith_Query_Book_book<TRes> {
  _CopyWithImpl_Query_Book_book(
    this._instance,
    this._then,
  );

  final Query_Book_book _instance;

  final TRes Function(Query_Book_book) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? author = _undefined,
    Object? slug = _undefined,
    Object? chapters = _undefined,
    Object? title = _undefined,
    Object? summary = _undefined,
    Object? cover = _undefined,
    Object? dedication = _undefined,
    Object? pages = _undefined,
    Object? releaseDate = _undefined,
    Object? wiki = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_Book_book(
        author: author == _undefined ? _instance.author : (author as String?),
        slug: slug == _undefined ? _instance.slug : (slug as String?),
        chapters: chapters == _undefined || chapters == null
            ? _instance.chapters
            : (chapters as Query_Book_book_chapters),
        title: title == _undefined ? _instance.title : (title as String?),
        summary:
            summary == _undefined ? _instance.summary : (summary as String?),
        cover: cover == _undefined ? _instance.cover : (cover as String?),
        dedication: dedication == _undefined
            ? _instance.dedication
            : (dedication as String?),
        pages: pages == _undefined ? _instance.pages : (pages as int?),
        releaseDate: releaseDate == _undefined
            ? _instance.releaseDate
            : (releaseDate as String?),
        wiki: wiki == _undefined ? _instance.wiki : (wiki as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Query_Book_book_chapters<TRes> get chapters {
    final local$chapters = _instance.chapters;
    return CopyWith_Query_Book_book_chapters(
        local$chapters, (e) => call(chapters: e));
  }
}

class _CopyWithStubImpl_Query_Book_book<TRes>
    implements CopyWith_Query_Book_book<TRes> {
  _CopyWithStubImpl_Query_Book_book(this._res);

  TRes _res;

  call({
    String? author,
    String? slug,
    Query_Book_book_chapters? chapters,
    String? title,
    String? summary,
    String? cover,
    String? dedication,
    int? pages,
    String? releaseDate,
    String? wiki,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Query_Book_book_chapters<TRes> get chapters =>
      CopyWith_Query_Book_book_chapters.stub(_res);
}

class Query_Book_book_chapters {
  Query_Book_book_chapters({
    this.edges,
    this.nodes,
    required this.pageInfo,
    required this.totalCount,
    this.$__typename = 'ChapterConnection',
  });

  factory Query_Book_book_chapters.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$nodes = json['nodes'];
    final l$pageInfo = json['pageInfo'];
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query_Book_book_chapters(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query_Book_book_chapters_edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query_Book_book_chapters_nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query_Book_book_chapters_pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      totalCount: (l$totalCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query_Book_book_chapters_edges?>? edges;

  final List<Query_Book_book_chapters_nodes?>? nodes;

  final Query_Book_book_chapters_pageInfo pageInfo;

  final int totalCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$nodes = nodes;
    final l$pageInfo = pageInfo;
    final l$totalCount = totalCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$pageInfo,
      l$totalCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_Book_book_chapters ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
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
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
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

extension UtilityExtension_Query_Book_book_chapters
    on Query_Book_book_chapters {
  CopyWith_Query_Book_book_chapters<Query_Book_book_chapters> get copyWith =>
      CopyWith_Query_Book_book_chapters(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_Book_book_chapters<TRes> {
  factory CopyWith_Query_Book_book_chapters(
    Query_Book_book_chapters instance,
    TRes Function(Query_Book_book_chapters) then,
  ) = _CopyWithImpl_Query_Book_book_chapters;

  factory CopyWith_Query_Book_book_chapters.stub(TRes res) =
      _CopyWithStubImpl_Query_Book_book_chapters;

  TRes call({
    List<Query_Book_book_chapters_edges?>? edges,
    List<Query_Book_book_chapters_nodes?>? nodes,
    Query_Book_book_chapters_pageInfo? pageInfo,
    int? totalCount,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query_Book_book_chapters_edges?>? Function(
              Iterable<
                  CopyWith_Query_Book_book_chapters_edges<
                      Query_Book_book_chapters_edges>?>?)
          _fn);
  TRes nodes(
      Iterable<Query_Book_book_chapters_nodes?>? Function(
              Iterable<
                  CopyWith_Query_Book_book_chapters_nodes<
                      Query_Book_book_chapters_nodes>?>?)
          _fn);
  CopyWith_Query_Book_book_chapters_pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl_Query_Book_book_chapters<TRes>
    implements CopyWith_Query_Book_book_chapters<TRes> {
  _CopyWithImpl_Query_Book_book_chapters(
    this._instance,
    this._then,
  );

  final Query_Book_book_chapters _instance;

  final TRes Function(Query_Book_book_chapters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? nodes = _undefined,
    Object? pageInfo = _undefined,
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_Book_book_chapters(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query_Book_book_chapters_edges?>?),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query_Book_book_chapters_nodes?>?),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query_Book_book_chapters_pageInfo),
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query_Book_book_chapters_edges?>? Function(
                  Iterable<
                      CopyWith_Query_Book_book_chapters_edges<
                          Query_Book_book_chapters_edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith_Query_Book_book_chapters_edges(
                  e,
                  (i) => i,
                )))?.toList());

  TRes nodes(
          Iterable<Query_Book_book_chapters_nodes?>? Function(
                  Iterable<
                      CopyWith_Query_Book_book_chapters_nodes<
                          Query_Book_book_chapters_nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith_Query_Book_book_chapters_nodes(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith_Query_Book_book_chapters_pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith_Query_Book_book_chapters_pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl_Query_Book_book_chapters<TRes>
    implements CopyWith_Query_Book_book_chapters<TRes> {
  _CopyWithStubImpl_Query_Book_book_chapters(this._res);

  TRes _res;

  call({
    List<Query_Book_book_chapters_edges?>? edges,
    List<Query_Book_book_chapters_nodes?>? nodes,
    Query_Book_book_chapters_pageInfo? pageInfo,
    int? totalCount,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  nodes(_fn) => _res;

  CopyWith_Query_Book_book_chapters_pageInfo<TRes> get pageInfo =>
      CopyWith_Query_Book_book_chapters_pageInfo.stub(_res);
}

class Query_Book_book_chapters_edges {
  Query_Book_book_chapters_edges({
    required this.cursor,
    this.$__typename = 'ChapterEdge',
  });

  factory Query_Book_book_chapters_edges.fromJson(Map<String, dynamic> json) {
    final l$cursor = json['cursor'];
    final l$$__typename = json['__typename'];
    return Query_Book_book_chapters_edges(
      cursor: (l$cursor as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String cursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cursor = cursor;
    _resultData['cursor'] = l$cursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cursor = cursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$cursor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_Book_book_chapters_edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cursor = cursor;
    final lOther$cursor = other.cursor;
    if (l$cursor != lOther$cursor) {
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

extension UtilityExtension_Query_Book_book_chapters_edges
    on Query_Book_book_chapters_edges {
  CopyWith_Query_Book_book_chapters_edges<Query_Book_book_chapters_edges>
      get copyWith => CopyWith_Query_Book_book_chapters_edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_Book_book_chapters_edges<TRes> {
  factory CopyWith_Query_Book_book_chapters_edges(
    Query_Book_book_chapters_edges instance,
    TRes Function(Query_Book_book_chapters_edges) then,
  ) = _CopyWithImpl_Query_Book_book_chapters_edges;

  factory CopyWith_Query_Book_book_chapters_edges.stub(TRes res) =
      _CopyWithStubImpl_Query_Book_book_chapters_edges;

  TRes call({
    String? cursor,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_Book_book_chapters_edges<TRes>
    implements CopyWith_Query_Book_book_chapters_edges<TRes> {
  _CopyWithImpl_Query_Book_book_chapters_edges(
    this._instance,
    this._then,
  );

  final Query_Book_book_chapters_edges _instance;

  final TRes Function(Query_Book_book_chapters_edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_Book_book_chapters_edges(
        cursor: cursor == _undefined || cursor == null
            ? _instance.cursor
            : (cursor as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_Book_book_chapters_edges<TRes>
    implements CopyWith_Query_Book_book_chapters_edges<TRes> {
  _CopyWithStubImpl_Query_Book_book_chapters_edges(this._res);

  TRes _res;

  call({
    String? cursor,
    String? $__typename,
  }) =>
      _res;
}

class Query_Book_book_chapters_nodes {
  Query_Book_book_chapters_nodes({
    this.title,
    this.$__typename = 'Chapter',
  });

  factory Query_Book_book_chapters_nodes.fromJson(Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query_Book_book_chapters_nodes(
      title: (l$title as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_Book_book_chapters_nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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

extension UtilityExtension_Query_Book_book_chapters_nodes
    on Query_Book_book_chapters_nodes {
  CopyWith_Query_Book_book_chapters_nodes<Query_Book_book_chapters_nodes>
      get copyWith => CopyWith_Query_Book_book_chapters_nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_Book_book_chapters_nodes<TRes> {
  factory CopyWith_Query_Book_book_chapters_nodes(
    Query_Book_book_chapters_nodes instance,
    TRes Function(Query_Book_book_chapters_nodes) then,
  ) = _CopyWithImpl_Query_Book_book_chapters_nodes;

  factory CopyWith_Query_Book_book_chapters_nodes.stub(TRes res) =
      _CopyWithStubImpl_Query_Book_book_chapters_nodes;

  TRes call({
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_Book_book_chapters_nodes<TRes>
    implements CopyWith_Query_Book_book_chapters_nodes<TRes> {
  _CopyWithImpl_Query_Book_book_chapters_nodes(
    this._instance,
    this._then,
  );

  final Query_Book_book_chapters_nodes _instance;

  final TRes Function(Query_Book_book_chapters_nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_Book_book_chapters_nodes(
        title: title == _undefined ? _instance.title : (title as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_Book_book_chapters_nodes<TRes>
    implements CopyWith_Query_Book_book_chapters_nodes<TRes> {
  _CopyWithStubImpl_Query_Book_book_chapters_nodes(this._res);

  TRes _res;

  call({
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Query_Book_book_chapters_pageInfo {
  Query_Book_book_chapters_pageInfo({
    required this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query_Book_book_chapters_pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query_Book_book_chapters_pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_Book_book_chapters_pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
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

extension UtilityExtension_Query_Book_book_chapters_pageInfo
    on Query_Book_book_chapters_pageInfo {
  CopyWith_Query_Book_book_chapters_pageInfo<Query_Book_book_chapters_pageInfo>
      get copyWith => CopyWith_Query_Book_book_chapters_pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_Book_book_chapters_pageInfo<TRes> {
  factory CopyWith_Query_Book_book_chapters_pageInfo(
    Query_Book_book_chapters_pageInfo instance,
    TRes Function(Query_Book_book_chapters_pageInfo) then,
  ) = _CopyWithImpl_Query_Book_book_chapters_pageInfo;

  factory CopyWith_Query_Book_book_chapters_pageInfo.stub(TRes res) =
      _CopyWithStubImpl_Query_Book_book_chapters_pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_Book_book_chapters_pageInfo<TRes>
    implements CopyWith_Query_Book_book_chapters_pageInfo<TRes> {
  _CopyWithImpl_Query_Book_book_chapters_pageInfo(
    this._instance,
    this._then,
  );

  final Query_Book_book_chapters_pageInfo _instance;

  final TRes Function(Query_Book_book_chapters_pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_Book_book_chapters_pageInfo(
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_Book_book_chapters_pageInfo<TRes>
    implements CopyWith_Query_Book_book_chapters_pageInfo<TRes> {
  _CopyWithStubImpl_Query_Book_book_chapters_pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

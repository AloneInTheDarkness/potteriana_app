import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables_Query_Spells {
  factory Variables_Query_Spells({String? after}) => Variables_Query_Spells._({
        if (after != null) r'after': after,
      });

  Variables_Query_Spells._(this._$data);

  factory Variables_Query_Spells.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables_Query_Spells._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    return result$data;
  }

  CopyWith_Variables_Query_Spells<Variables_Query_Spells> get copyWith =>
      CopyWith_Variables_Query_Spells(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_Spells || runtimeType != other.runtimeType) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$after = after;
    return Object.hashAll([_$data.containsKey('after') ? l$after : const {}]);
  }
}

abstract class CopyWith_Variables_Query_Spells<TRes> {
  factory CopyWith_Variables_Query_Spells(
    Variables_Query_Spells instance,
    TRes Function(Variables_Query_Spells) then,
  ) = _CopyWithImpl_Variables_Query_Spells;

  factory CopyWith_Variables_Query_Spells.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_Spells;

  TRes call({String? after});
}

class _CopyWithImpl_Variables_Query_Spells<TRes>
    implements CopyWith_Variables_Query_Spells<TRes> {
  _CopyWithImpl_Variables_Query_Spells(
    this._instance,
    this._then,
  );

  final Variables_Query_Spells _instance;

  final TRes Function(Variables_Query_Spells) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? after = _undefined}) => _then(Variables_Query_Spells._({
        ..._instance._$data,
        if (after != _undefined) 'after': (after as String?),
      }));
}

class _CopyWithStubImpl_Variables_Query_Spells<TRes>
    implements CopyWith_Variables_Query_Spells<TRes> {
  _CopyWithStubImpl_Variables_Query_Spells(this._res);

  TRes _res;

  call({String? after}) => _res;
}

class Query_Spells {
  Query_Spells({
    required this.spells,
    this.$__typename = 'Query',
  });

  factory Query_Spells.fromJson(Map<String, dynamic> json) {
    final l$spells = json['spells'];
    final l$$__typename = json['__typename'];
    return Query_Spells(
      spells: Query_Spells_spells.fromJson((l$spells as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_Spells_spells spells;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$spells = spells;
    _resultData['spells'] = l$spells.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$spells = spells;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$spells,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_Spells || runtimeType != other.runtimeType) {
      return false;
    }
    final l$spells = spells;
    final lOther$spells = other.spells;
    if (l$spells != lOther$spells) {
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

extension UtilityExtension_Query_Spells on Query_Spells {
  CopyWith_Query_Spells<Query_Spells> get copyWith => CopyWith_Query_Spells(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_Spells<TRes> {
  factory CopyWith_Query_Spells(
    Query_Spells instance,
    TRes Function(Query_Spells) then,
  ) = _CopyWithImpl_Query_Spells;

  factory CopyWith_Query_Spells.stub(TRes res) = _CopyWithStubImpl_Query_Spells;

  TRes call({
    Query_Spells_spells? spells,
    String? $__typename,
  });
  CopyWith_Query_Spells_spells<TRes> get spells;
}

class _CopyWithImpl_Query_Spells<TRes> implements CopyWith_Query_Spells<TRes> {
  _CopyWithImpl_Query_Spells(
    this._instance,
    this._then,
  );

  final Query_Spells _instance;

  final TRes Function(Query_Spells) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? spells = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_Spells(
        spells: spells == _undefined || spells == null
            ? _instance.spells
            : (spells as Query_Spells_spells),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Query_Spells_spells<TRes> get spells {
    final local$spells = _instance.spells;
    return CopyWith_Query_Spells_spells(local$spells, (e) => call(spells: e));
  }
}

class _CopyWithStubImpl_Query_Spells<TRes>
    implements CopyWith_Query_Spells<TRes> {
  _CopyWithStubImpl_Query_Spells(this._res);

  TRes _res;

  call({
    Query_Spells_spells? spells,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Query_Spells_spells<TRes> get spells =>
      CopyWith_Query_Spells_spells.stub(_res);
}

const documentNodeQuerySpells = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Spells'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'spells'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          )
        ],
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
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'endCursor'),
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
                name: NameNode(value: 'slug'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'image'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
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
Query_Spells _parserFn_Query_Spells(Map<String, dynamic> data) =>
    Query_Spells.fromJson(data);
typedef OnQueryComplete_Query_Spells = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query_Spells?,
);

class Options_Query_Spells extends graphql.QueryOptions<Query_Spells> {
  Options_Query_Spells({
    String? operationName,
    Variables_Query_Spells? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query_Spells? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete_Query_Spells? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
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
                    data == null ? null : _parserFn_Query_Spells(data),
                  ),
          onError: onError,
          document: documentNodeQuerySpells,
          parserFn: _parserFn_Query_Spells,
        );

  final OnQueryComplete_Query_Spells? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions_Query_Spells
    extends graphql.WatchQueryOptions<Query_Spells> {
  WatchOptions_Query_Spells({
    String? operationName,
    Variables_Query_Spells? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query_Spells? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerySpells,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn_Query_Spells,
        );
}

class FetchMoreOptions_Query_Spells extends graphql.FetchMoreOptions {
  FetchMoreOptions_Query_Spells({
    required graphql.UpdateQuery updateQuery,
    Variables_Query_Spells? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerySpells,
        );
}

extension ClientExtension_Query_Spells on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query_Spells>> query_Spells(
          [Options_Query_Spells? options]) async =>
      await this.query(options ?? Options_Query_Spells());
  graphql.ObservableQuery<Query_Spells> watchQuery_Spells(
          [WatchOptions_Query_Spells? options]) =>
      this.watchQuery(options ?? WatchOptions_Query_Spells());
  void writeQuery_Spells({
    required Query_Spells data,
    Variables_Query_Spells? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerySpells),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query_Spells? readQuery_Spells({
    Variables_Query_Spells? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerySpells),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query_Spells.fromJson(result);
  }
}

class Query_Spells_spells {
  Query_Spells_spells({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SpellConnection',
  });

  factory Query_Spells_spells.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query_Spells_spells(
      totalCount: (l$totalCount as int),
      pageInfo: Query_Spells_spells_pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query_Spells_spells_nodes.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query_Spells_spells_pageInfo pageInfo;

  final List<Query_Spells_spells_nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$pageInfo = pageInfo;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$pageInfo,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_Spells_spells || runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension_Query_Spells_spells on Query_Spells_spells {
  CopyWith_Query_Spells_spells<Query_Spells_spells> get copyWith =>
      CopyWith_Query_Spells_spells(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_Spells_spells<TRes> {
  factory CopyWith_Query_Spells_spells(
    Query_Spells_spells instance,
    TRes Function(Query_Spells_spells) then,
  ) = _CopyWithImpl_Query_Spells_spells;

  factory CopyWith_Query_Spells_spells.stub(TRes res) =
      _CopyWithStubImpl_Query_Spells_spells;

  TRes call({
    int? totalCount,
    Query_Spells_spells_pageInfo? pageInfo,
    List<Query_Spells_spells_nodes?>? nodes,
    String? $__typename,
  });
  CopyWith_Query_Spells_spells_pageInfo<TRes> get pageInfo;
  TRes nodes(
      Iterable<Query_Spells_spells_nodes?>? Function(
              Iterable<
                  CopyWith_Query_Spells_spells_nodes<
                      Query_Spells_spells_nodes>?>?)
          _fn);
}

class _CopyWithImpl_Query_Spells_spells<TRes>
    implements CopyWith_Query_Spells_spells<TRes> {
  _CopyWithImpl_Query_Spells_spells(
    this._instance,
    this._then,
  );

  final Query_Spells_spells _instance;

  final TRes Function(Query_Spells_spells) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_Spells_spells(
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query_Spells_spells_pageInfo),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query_Spells_spells_nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Query_Spells_spells_pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith_Query_Spells_spells_pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Query_Spells_spells_nodes?>? Function(
                  Iterable<
                      CopyWith_Query_Spells_spells_nodes<
                          Query_Spells_spells_nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith_Query_Spells_spells_nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl_Query_Spells_spells<TRes>
    implements CopyWith_Query_Spells_spells<TRes> {
  _CopyWithStubImpl_Query_Spells_spells(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query_Spells_spells_pageInfo? pageInfo,
    List<Query_Spells_spells_nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Query_Spells_spells_pageInfo<TRes> get pageInfo =>
      CopyWith_Query_Spells_spells_pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query_Spells_spells_pageInfo {
  Query_Spells_spells_pageInfo({
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query_Spells_spells_pageInfo.fromJson(Map<String, dynamic> json) {
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query_Spells_spells_pageInfo(
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$endCursor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_Spells_spells_pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
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

extension UtilityExtension_Query_Spells_spells_pageInfo
    on Query_Spells_spells_pageInfo {
  CopyWith_Query_Spells_spells_pageInfo<Query_Spells_spells_pageInfo>
      get copyWith => CopyWith_Query_Spells_spells_pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_Spells_spells_pageInfo<TRes> {
  factory CopyWith_Query_Spells_spells_pageInfo(
    Query_Spells_spells_pageInfo instance,
    TRes Function(Query_Spells_spells_pageInfo) then,
  ) = _CopyWithImpl_Query_Spells_spells_pageInfo;

  factory CopyWith_Query_Spells_spells_pageInfo.stub(TRes res) =
      _CopyWithStubImpl_Query_Spells_spells_pageInfo;

  TRes call({
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_Spells_spells_pageInfo<TRes>
    implements CopyWith_Query_Spells_spells_pageInfo<TRes> {
  _CopyWithImpl_Query_Spells_spells_pageInfo(
    this._instance,
    this._then,
  );

  final Query_Spells_spells_pageInfo _instance;

  final TRes Function(Query_Spells_spells_pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_Spells_spells_pageInfo(
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_Spells_spells_pageInfo<TRes>
    implements CopyWith_Query_Spells_spells_pageInfo<TRes> {
  _CopyWithStubImpl_Query_Spells_spells_pageInfo(this._res);

  TRes _res;

  call({
    String? endCursor,
    String? $__typename,
  }) =>
      _res;
}

class Query_Spells_spells_nodes {
  Query_Spells_spells_nodes({
    this.slug,
    this.image,
    this.name,
    this.$__typename = 'Spell',
  });

  factory Query_Spells_spells_nodes.fromJson(Map<String, dynamic> json) {
    final l$slug = json['slug'];
    final l$image = json['image'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query_Spells_spells_nodes(
      slug: (l$slug as String?),
      image: (l$image as String?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? slug;

  final String? image;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$slug = slug;
    _resultData['slug'] = l$slug;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$slug = slug;
    final l$image = image;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$slug,
      l$image,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_Spells_spells_nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension_Query_Spells_spells_nodes
    on Query_Spells_spells_nodes {
  CopyWith_Query_Spells_spells_nodes<Query_Spells_spells_nodes> get copyWith =>
      CopyWith_Query_Spells_spells_nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_Spells_spells_nodes<TRes> {
  factory CopyWith_Query_Spells_spells_nodes(
    Query_Spells_spells_nodes instance,
    TRes Function(Query_Spells_spells_nodes) then,
  ) = _CopyWithImpl_Query_Spells_spells_nodes;

  factory CopyWith_Query_Spells_spells_nodes.stub(TRes res) =
      _CopyWithStubImpl_Query_Spells_spells_nodes;

  TRes call({
    String? slug,
    String? image,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_Spells_spells_nodes<TRes>
    implements CopyWith_Query_Spells_spells_nodes<TRes> {
  _CopyWithImpl_Query_Spells_spells_nodes(
    this._instance,
    this._then,
  );

  final Query_Spells_spells_nodes _instance;

  final TRes Function(Query_Spells_spells_nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? slug = _undefined,
    Object? image = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_Spells_spells_nodes(
        slug: slug == _undefined ? _instance.slug : (slug as String?),
        image: image == _undefined ? _instance.image : (image as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_Spells_spells_nodes<TRes>
    implements CopyWith_Query_Spells_spells_nodes<TRes> {
  _CopyWithStubImpl_Query_Spells_spells_nodes(this._res);

  TRes _res;

  call({
    String? slug,
    String? image,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

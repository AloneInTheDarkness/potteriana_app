import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables_Query_Potion {
  factory Variables_Query_Potion({required String slug}) =>
      Variables_Query_Potion._({
        r'slug': slug,
      });

  Variables_Query_Potion._(this._$data);

  factory Variables_Query_Potion.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$slug = data['slug'];
    result$data['slug'] = (l$slug as String);
    return Variables_Query_Potion._(result$data);
  }

  Map<String, dynamic> _$data;

  String get slug => (_$data['slug'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$slug = slug;
    result$data['slug'] = l$slug;
    return result$data;
  }

  CopyWith_Variables_Query_Potion<Variables_Query_Potion> get copyWith =>
      CopyWith_Variables_Query_Potion(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_Potion || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Variables_Query_Potion<TRes> {
  factory CopyWith_Variables_Query_Potion(
    Variables_Query_Potion instance,
    TRes Function(Variables_Query_Potion) then,
  ) = _CopyWithImpl_Variables_Query_Potion;

  factory CopyWith_Variables_Query_Potion.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_Potion;

  TRes call({String? slug});
}

class _CopyWithImpl_Variables_Query_Potion<TRes>
    implements CopyWith_Variables_Query_Potion<TRes> {
  _CopyWithImpl_Variables_Query_Potion(
    this._instance,
    this._then,
  );

  final Variables_Query_Potion _instance;

  final TRes Function(Variables_Query_Potion) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? slug = _undefined}) => _then(Variables_Query_Potion._({
        ..._instance._$data,
        if (slug != _undefined && slug != null) 'slug': (slug as String),
      }));
}

class _CopyWithStubImpl_Variables_Query_Potion<TRes>
    implements CopyWith_Variables_Query_Potion<TRes> {
  _CopyWithStubImpl_Variables_Query_Potion(this._res);

  TRes _res;

  call({String? slug}) => _res;
}

class Query_Potion {
  Query_Potion({
    this.potion,
    this.$__typename = 'Query',
  });

  factory Query_Potion.fromJson(Map<String, dynamic> json) {
    final l$potion = json['potion'];
    final l$$__typename = json['__typename'];
    return Query_Potion(
      potion: l$potion == null
          ? null
          : Query_Potion_potion.fromJson((l$potion as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_Potion_potion? potion;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$potion = potion;
    _resultData['potion'] = l$potion?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$potion = potion;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$potion,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_Potion || runtimeType != other.runtimeType) {
      return false;
    }
    final l$potion = potion;
    final lOther$potion = other.potion;
    if (l$potion != lOther$potion) {
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

extension UtilityExtension_Query_Potion on Query_Potion {
  CopyWith_Query_Potion<Query_Potion> get copyWith => CopyWith_Query_Potion(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_Potion<TRes> {
  factory CopyWith_Query_Potion(
    Query_Potion instance,
    TRes Function(Query_Potion) then,
  ) = _CopyWithImpl_Query_Potion;

  factory CopyWith_Query_Potion.stub(TRes res) = _CopyWithStubImpl_Query_Potion;

  TRes call({
    Query_Potion_potion? potion,
    String? $__typename,
  });
  CopyWith_Query_Potion_potion<TRes> get potion;
}

class _CopyWithImpl_Query_Potion<TRes> implements CopyWith_Query_Potion<TRes> {
  _CopyWithImpl_Query_Potion(
    this._instance,
    this._then,
  );

  final Query_Potion _instance;

  final TRes Function(Query_Potion) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? potion = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_Potion(
        potion: potion == _undefined
            ? _instance.potion
            : (potion as Query_Potion_potion?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Query_Potion_potion<TRes> get potion {
    final local$potion = _instance.potion;
    return local$potion == null
        ? CopyWith_Query_Potion_potion.stub(_then(_instance))
        : CopyWith_Query_Potion_potion(local$potion, (e) => call(potion: e));
  }
}

class _CopyWithStubImpl_Query_Potion<TRes>
    implements CopyWith_Query_Potion<TRes> {
  _CopyWithStubImpl_Query_Potion(this._res);

  TRes _res;

  call({
    Query_Potion_potion? potion,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Query_Potion_potion<TRes> get potion =>
      CopyWith_Query_Potion_potion.stub(_res);
}

const documentNodeQueryPotion = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Potion'),
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
        name: NameNode(value: 'potion'),
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
            name: NameNode(value: 'wiki'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'characteristics'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'difficulty'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'effect'),
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
            name: NameNode(value: 'ingredients'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'inventors'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'manufacturers'),
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
            name: NameNode(value: 'sideEffects'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'time'),
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
Query_Potion _parserFn_Query_Potion(Map<String, dynamic> data) =>
    Query_Potion.fromJson(data);
typedef OnQueryComplete_Query_Potion = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query_Potion?,
);

class Options_Query_Potion extends graphql.QueryOptions<Query_Potion> {
  Options_Query_Potion({
    String? operationName,
    required Variables_Query_Potion variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query_Potion? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete_Query_Potion? onComplete,
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
                    data == null ? null : _parserFn_Query_Potion(data),
                  ),
          onError: onError,
          document: documentNodeQueryPotion,
          parserFn: _parserFn_Query_Potion,
        );

  final OnQueryComplete_Query_Potion? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions_Query_Potion
    extends graphql.WatchQueryOptions<Query_Potion> {
  WatchOptions_Query_Potion({
    String? operationName,
    required Variables_Query_Potion variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query_Potion? typedOptimisticResult,
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
          document: documentNodeQueryPotion,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn_Query_Potion,
        );
}

class FetchMoreOptions_Query_Potion extends graphql.FetchMoreOptions {
  FetchMoreOptions_Query_Potion({
    required graphql.UpdateQuery updateQuery,
    required Variables_Query_Potion variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryPotion,
        );
}

extension ClientExtension_Query_Potion on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query_Potion>> query_Potion(
          Options_Query_Potion options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query_Potion> watchQuery_Potion(
          WatchOptions_Query_Potion options) =>
      this.watchQuery(options);
  void writeQuery_Potion({
    required Query_Potion data,
    required Variables_Query_Potion variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryPotion),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query_Potion? readQuery_Potion({
    required Variables_Query_Potion variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryPotion),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query_Potion.fromJson(result);
  }
}

class Query_Potion_potion {
  Query_Potion_potion({
    this.slug,
    this.wiki,
    this.characteristics,
    this.difficulty,
    this.effect,
    this.image,
    this.ingredients,
    this.inventors,
    this.manufacturers,
    this.name,
    this.sideEffects,
    this.time,
    this.$__typename = 'Potion',
  });

  factory Query_Potion_potion.fromJson(Map<String, dynamic> json) {
    final l$slug = json['slug'];
    final l$wiki = json['wiki'];
    final l$characteristics = json['characteristics'];
    final l$difficulty = json['difficulty'];
    final l$effect = json['effect'];
    final l$image = json['image'];
    final l$ingredients = json['ingredients'];
    final l$inventors = json['inventors'];
    final l$manufacturers = json['manufacturers'];
    final l$name = json['name'];
    final l$sideEffects = json['sideEffects'];
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query_Potion_potion(
      slug: (l$slug as String?),
      wiki: (l$wiki as String?),
      characteristics: (l$characteristics as String?),
      difficulty: (l$difficulty as String?),
      effect: (l$effect as String?),
      image: (l$image as String?),
      ingredients: (l$ingredients as String?),
      inventors: (l$inventors as String?),
      manufacturers: (l$manufacturers as String?),
      name: (l$name as String?),
      sideEffects: (l$sideEffects as String?),
      time: (l$time as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? slug;

  final String? wiki;

  final String? characteristics;

  final String? difficulty;

  final String? effect;

  final String? image;

  final String? ingredients;

  final String? inventors;

  final String? manufacturers;

  final String? name;

  final String? sideEffects;

  final String? time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$slug = slug;
    _resultData['slug'] = l$slug;
    final l$wiki = wiki;
    _resultData['wiki'] = l$wiki;
    final l$characteristics = characteristics;
    _resultData['characteristics'] = l$characteristics;
    final l$difficulty = difficulty;
    _resultData['difficulty'] = l$difficulty;
    final l$effect = effect;
    _resultData['effect'] = l$effect;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$ingredients = ingredients;
    _resultData['ingredients'] = l$ingredients;
    final l$inventors = inventors;
    _resultData['inventors'] = l$inventors;
    final l$manufacturers = manufacturers;
    _resultData['manufacturers'] = l$manufacturers;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$sideEffects = sideEffects;
    _resultData['sideEffects'] = l$sideEffects;
    final l$time = time;
    _resultData['time'] = l$time;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$slug = slug;
    final l$wiki = wiki;
    final l$characteristics = characteristics;
    final l$difficulty = difficulty;
    final l$effect = effect;
    final l$image = image;
    final l$ingredients = ingredients;
    final l$inventors = inventors;
    final l$manufacturers = manufacturers;
    final l$name = name;
    final l$sideEffects = sideEffects;
    final l$time = time;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$slug,
      l$wiki,
      l$characteristics,
      l$difficulty,
      l$effect,
      l$image,
      l$ingredients,
      l$inventors,
      l$manufacturers,
      l$name,
      l$sideEffects,
      l$time,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_Potion_potion || runtimeType != other.runtimeType) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$wiki = wiki;
    final lOther$wiki = other.wiki;
    if (l$wiki != lOther$wiki) {
      return false;
    }
    final l$characteristics = characteristics;
    final lOther$characteristics = other.characteristics;
    if (l$characteristics != lOther$characteristics) {
      return false;
    }
    final l$difficulty = difficulty;
    final lOther$difficulty = other.difficulty;
    if (l$difficulty != lOther$difficulty) {
      return false;
    }
    final l$effect = effect;
    final lOther$effect = other.effect;
    if (l$effect != lOther$effect) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$ingredients = ingredients;
    final lOther$ingredients = other.ingredients;
    if (l$ingredients != lOther$ingredients) {
      return false;
    }
    final l$inventors = inventors;
    final lOther$inventors = other.inventors;
    if (l$inventors != lOther$inventors) {
      return false;
    }
    final l$manufacturers = manufacturers;
    final lOther$manufacturers = other.manufacturers;
    if (l$manufacturers != lOther$manufacturers) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$sideEffects = sideEffects;
    final lOther$sideEffects = other.sideEffects;
    if (l$sideEffects != lOther$sideEffects) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Query_Potion_potion on Query_Potion_potion {
  CopyWith_Query_Potion_potion<Query_Potion_potion> get copyWith =>
      CopyWith_Query_Potion_potion(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_Potion_potion<TRes> {
  factory CopyWith_Query_Potion_potion(
    Query_Potion_potion instance,
    TRes Function(Query_Potion_potion) then,
  ) = _CopyWithImpl_Query_Potion_potion;

  factory CopyWith_Query_Potion_potion.stub(TRes res) =
      _CopyWithStubImpl_Query_Potion_potion;

  TRes call({
    String? slug,
    String? wiki,
    String? characteristics,
    String? difficulty,
    String? effect,
    String? image,
    String? ingredients,
    String? inventors,
    String? manufacturers,
    String? name,
    String? sideEffects,
    String? time,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_Potion_potion<TRes>
    implements CopyWith_Query_Potion_potion<TRes> {
  _CopyWithImpl_Query_Potion_potion(
    this._instance,
    this._then,
  );

  final Query_Potion_potion _instance;

  final TRes Function(Query_Potion_potion) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? slug = _undefined,
    Object? wiki = _undefined,
    Object? characteristics = _undefined,
    Object? difficulty = _undefined,
    Object? effect = _undefined,
    Object? image = _undefined,
    Object? ingredients = _undefined,
    Object? inventors = _undefined,
    Object? manufacturers = _undefined,
    Object? name = _undefined,
    Object? sideEffects = _undefined,
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_Potion_potion(
        slug: slug == _undefined ? _instance.slug : (slug as String?),
        wiki: wiki == _undefined ? _instance.wiki : (wiki as String?),
        characteristics: characteristics == _undefined
            ? _instance.characteristics
            : (characteristics as String?),
        difficulty: difficulty == _undefined
            ? _instance.difficulty
            : (difficulty as String?),
        effect: effect == _undefined ? _instance.effect : (effect as String?),
        image: image == _undefined ? _instance.image : (image as String?),
        ingredients: ingredients == _undefined
            ? _instance.ingredients
            : (ingredients as String?),
        inventors: inventors == _undefined
            ? _instance.inventors
            : (inventors as String?),
        manufacturers: manufacturers == _undefined
            ? _instance.manufacturers
            : (manufacturers as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        sideEffects: sideEffects == _undefined
            ? _instance.sideEffects
            : (sideEffects as String?),
        time: time == _undefined ? _instance.time : (time as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_Potion_potion<TRes>
    implements CopyWith_Query_Potion_potion<TRes> {
  _CopyWithStubImpl_Query_Potion_potion(this._res);

  TRes _res;

  call({
    String? slug,
    String? wiki,
    String? characteristics,
    String? difficulty,
    String? effect,
    String? image,
    String? ingredients,
    String? inventors,
    String? manufacturers,
    String? name,
    String? sideEffects,
    String? time,
    String? $__typename,
  }) =>
      _res;
}

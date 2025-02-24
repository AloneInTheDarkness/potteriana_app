import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables_Query_Spell {
  factory Variables_Query_Spell({required String slug}) =>
      Variables_Query_Spell._({
        r'slug': slug,
      });

  Variables_Query_Spell._(this._$data);

  factory Variables_Query_Spell.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$slug = data['slug'];
    result$data['slug'] = (l$slug as String);
    return Variables_Query_Spell._(result$data);
  }

  Map<String, dynamic> _$data;

  String get slug => (_$data['slug'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$slug = slug;
    result$data['slug'] = l$slug;
    return result$data;
  }

  CopyWith_Variables_Query_Spell<Variables_Query_Spell> get copyWith =>
      CopyWith_Variables_Query_Spell(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_Spell || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Variables_Query_Spell<TRes> {
  factory CopyWith_Variables_Query_Spell(
    Variables_Query_Spell instance,
    TRes Function(Variables_Query_Spell) then,
  ) = _CopyWithImpl_Variables_Query_Spell;

  factory CopyWith_Variables_Query_Spell.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_Spell;

  TRes call({String? slug});
}

class _CopyWithImpl_Variables_Query_Spell<TRes>
    implements CopyWith_Variables_Query_Spell<TRes> {
  _CopyWithImpl_Variables_Query_Spell(
    this._instance,
    this._then,
  );

  final Variables_Query_Spell _instance;

  final TRes Function(Variables_Query_Spell) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? slug = _undefined}) => _then(Variables_Query_Spell._({
        ..._instance._$data,
        if (slug != _undefined && slug != null) 'slug': (slug as String),
      }));
}

class _CopyWithStubImpl_Variables_Query_Spell<TRes>
    implements CopyWith_Variables_Query_Spell<TRes> {
  _CopyWithStubImpl_Variables_Query_Spell(this._res);

  TRes _res;

  call({String? slug}) => _res;
}

class Query_Spell {
  Query_Spell({
    this.spell,
    this.$__typename = 'Query',
  });

  factory Query_Spell.fromJson(Map<String, dynamic> json) {
    final l$spell = json['spell'];
    final l$$__typename = json['__typename'];
    return Query_Spell(
      spell: l$spell == null
          ? null
          : Query_Spell_spell.fromJson((l$spell as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_Spell_spell? spell;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$spell = spell;
    _resultData['spell'] = l$spell?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$spell = spell;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$spell,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_Spell || runtimeType != other.runtimeType) {
      return false;
    }
    final l$spell = spell;
    final lOther$spell = other.spell;
    if (l$spell != lOther$spell) {
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

extension UtilityExtension_Query_Spell on Query_Spell {
  CopyWith_Query_Spell<Query_Spell> get copyWith => CopyWith_Query_Spell(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_Spell<TRes> {
  factory CopyWith_Query_Spell(
    Query_Spell instance,
    TRes Function(Query_Spell) then,
  ) = _CopyWithImpl_Query_Spell;

  factory CopyWith_Query_Spell.stub(TRes res) = _CopyWithStubImpl_Query_Spell;

  TRes call({
    Query_Spell_spell? spell,
    String? $__typename,
  });
  CopyWith_Query_Spell_spell<TRes> get spell;
}

class _CopyWithImpl_Query_Spell<TRes> implements CopyWith_Query_Spell<TRes> {
  _CopyWithImpl_Query_Spell(
    this._instance,
    this._then,
  );

  final Query_Spell _instance;

  final TRes Function(Query_Spell) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? spell = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_Spell(
        spell: spell == _undefined
            ? _instance.spell
            : (spell as Query_Spell_spell?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Query_Spell_spell<TRes> get spell {
    final local$spell = _instance.spell;
    return local$spell == null
        ? CopyWith_Query_Spell_spell.stub(_then(_instance))
        : CopyWith_Query_Spell_spell(local$spell, (e) => call(spell: e));
  }
}

class _CopyWithStubImpl_Query_Spell<TRes>
    implements CopyWith_Query_Spell<TRes> {
  _CopyWithStubImpl_Query_Spell(this._res);

  TRes _res;

  call({
    Query_Spell_spell? spell,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Query_Spell_spell<TRes> get spell =>
      CopyWith_Query_Spell_spell.stub(_res);
}

const documentNodeQuerySpell = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Spell'),
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
        name: NameNode(value: 'spell'),
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
            name: NameNode(value: 'name'),
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
            name: NameNode(value: 'wiki'),
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
            name: NameNode(value: 'category'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'creator'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'hand'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'incantation'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'light'),
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
Query_Spell _parserFn_Query_Spell(Map<String, dynamic> data) =>
    Query_Spell.fromJson(data);
typedef OnQueryComplete_Query_Spell = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query_Spell?,
);

class Options_Query_Spell extends graphql.QueryOptions<Query_Spell> {
  Options_Query_Spell({
    String? operationName,
    required Variables_Query_Spell variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query_Spell? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete_Query_Spell? onComplete,
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
                    data == null ? null : _parserFn_Query_Spell(data),
                  ),
          onError: onError,
          document: documentNodeQuerySpell,
          parserFn: _parserFn_Query_Spell,
        );

  final OnQueryComplete_Query_Spell? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions_Query_Spell extends graphql.WatchQueryOptions<Query_Spell> {
  WatchOptions_Query_Spell({
    String? operationName,
    required Variables_Query_Spell variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query_Spell? typedOptimisticResult,
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
          document: documentNodeQuerySpell,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn_Query_Spell,
        );
}

class FetchMoreOptions_Query_Spell extends graphql.FetchMoreOptions {
  FetchMoreOptions_Query_Spell({
    required graphql.UpdateQuery updateQuery,
    required Variables_Query_Spell variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerySpell,
        );
}

extension ClientExtension_Query_Spell on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query_Spell>> query_Spell(
          Options_Query_Spell options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query_Spell> watchQuery_Spell(
          WatchOptions_Query_Spell options) =>
      this.watchQuery(options);
  void writeQuery_Spell({
    required Query_Spell data,
    required Variables_Query_Spell variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerySpell),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query_Spell? readQuery_Spell({
    required Variables_Query_Spell variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerySpell),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query_Spell.fromJson(result);
  }
}

class Query_Spell_spell {
  Query_Spell_spell({
    this.slug,
    this.name,
    this.image,
    this.wiki,
    this.effect,
    this.category,
    this.creator,
    this.hand,
    this.incantation,
    this.light,
    this.$__typename = 'Spell',
  });

  factory Query_Spell_spell.fromJson(Map<String, dynamic> json) {
    final l$slug = json['slug'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$wiki = json['wiki'];
    final l$effect = json['effect'];
    final l$category = json['category'];
    final l$creator = json['creator'];
    final l$hand = json['hand'];
    final l$incantation = json['incantation'];
    final l$light = json['light'];
    final l$$__typename = json['__typename'];
    return Query_Spell_spell(
      slug: (l$slug as String?),
      name: (l$name as String?),
      image: (l$image as String?),
      wiki: (l$wiki as String?),
      effect: (l$effect as String?),
      category: (l$category as String?),
      creator: (l$creator as String?),
      hand: (l$hand as String?),
      incantation: (l$incantation as String?),
      light: (l$light as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? slug;

  final String? name;

  final String? image;

  final String? wiki;

  final String? effect;

  final String? category;

  final String? creator;

  final String? hand;

  final String? incantation;

  final String? light;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$slug = slug;
    _resultData['slug'] = l$slug;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$wiki = wiki;
    _resultData['wiki'] = l$wiki;
    final l$effect = effect;
    _resultData['effect'] = l$effect;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$creator = creator;
    _resultData['creator'] = l$creator;
    final l$hand = hand;
    _resultData['hand'] = l$hand;
    final l$incantation = incantation;
    _resultData['incantation'] = l$incantation;
    final l$light = light;
    _resultData['light'] = l$light;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$slug = slug;
    final l$name = name;
    final l$image = image;
    final l$wiki = wiki;
    final l$effect = effect;
    final l$category = category;
    final l$creator = creator;
    final l$hand = hand;
    final l$incantation = incantation;
    final l$light = light;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$slug,
      l$name,
      l$image,
      l$wiki,
      l$effect,
      l$category,
      l$creator,
      l$hand,
      l$incantation,
      l$light,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_Spell_spell || runtimeType != other.runtimeType) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$wiki = wiki;
    final lOther$wiki = other.wiki;
    if (l$wiki != lOther$wiki) {
      return false;
    }
    final l$effect = effect;
    final lOther$effect = other.effect;
    if (l$effect != lOther$effect) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$creator = creator;
    final lOther$creator = other.creator;
    if (l$creator != lOther$creator) {
      return false;
    }
    final l$hand = hand;
    final lOther$hand = other.hand;
    if (l$hand != lOther$hand) {
      return false;
    }
    final l$incantation = incantation;
    final lOther$incantation = other.incantation;
    if (l$incantation != lOther$incantation) {
      return false;
    }
    final l$light = light;
    final lOther$light = other.light;
    if (l$light != lOther$light) {
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

extension UtilityExtension_Query_Spell_spell on Query_Spell_spell {
  CopyWith_Query_Spell_spell<Query_Spell_spell> get copyWith =>
      CopyWith_Query_Spell_spell(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_Spell_spell<TRes> {
  factory CopyWith_Query_Spell_spell(
    Query_Spell_spell instance,
    TRes Function(Query_Spell_spell) then,
  ) = _CopyWithImpl_Query_Spell_spell;

  factory CopyWith_Query_Spell_spell.stub(TRes res) =
      _CopyWithStubImpl_Query_Spell_spell;

  TRes call({
    String? slug,
    String? name,
    String? image,
    String? wiki,
    String? effect,
    String? category,
    String? creator,
    String? hand,
    String? incantation,
    String? light,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_Spell_spell<TRes>
    implements CopyWith_Query_Spell_spell<TRes> {
  _CopyWithImpl_Query_Spell_spell(
    this._instance,
    this._then,
  );

  final Query_Spell_spell _instance;

  final TRes Function(Query_Spell_spell) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? slug = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? wiki = _undefined,
    Object? effect = _undefined,
    Object? category = _undefined,
    Object? creator = _undefined,
    Object? hand = _undefined,
    Object? incantation = _undefined,
    Object? light = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_Spell_spell(
        slug: slug == _undefined ? _instance.slug : (slug as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        image: image == _undefined ? _instance.image : (image as String?),
        wiki: wiki == _undefined ? _instance.wiki : (wiki as String?),
        effect: effect == _undefined ? _instance.effect : (effect as String?),
        category:
            category == _undefined ? _instance.category : (category as String?),
        creator:
            creator == _undefined ? _instance.creator : (creator as String?),
        hand: hand == _undefined ? _instance.hand : (hand as String?),
        incantation: incantation == _undefined
            ? _instance.incantation
            : (incantation as String?),
        light: light == _undefined ? _instance.light : (light as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_Spell_spell<TRes>
    implements CopyWith_Query_Spell_spell<TRes> {
  _CopyWithStubImpl_Query_Spell_spell(this._res);

  TRes _res;

  call({
    String? slug,
    String? name,
    String? image,
    String? wiki,
    String? effect,
    String? category,
    String? creator,
    String? hand,
    String? incantation,
    String? light,
    String? $__typename,
  }) =>
      _res;
}

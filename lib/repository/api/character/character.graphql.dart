import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables_Query_Character {
  factory Variables_Query_Character({required String slug}) =>
      Variables_Query_Character._({
        r'slug': slug,
      });

  Variables_Query_Character._(this._$data);

  factory Variables_Query_Character.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$slug = data['slug'];
    result$data['slug'] = (l$slug as String);
    return Variables_Query_Character._(result$data);
  }

  Map<String, dynamic> _$data;

  String get slug => (_$data['slug'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$slug = slug;
    result$data['slug'] = l$slug;
    return result$data;
  }

  CopyWith_Variables_Query_Character<Variables_Query_Character> get copyWith =>
      CopyWith_Variables_Query_Character(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_Character ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Variables_Query_Character<TRes> {
  factory CopyWith_Variables_Query_Character(
    Variables_Query_Character instance,
    TRes Function(Variables_Query_Character) then,
  ) = _CopyWithImpl_Variables_Query_Character;

  factory CopyWith_Variables_Query_Character.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_Character;

  TRes call({String? slug});
}

class _CopyWithImpl_Variables_Query_Character<TRes>
    implements CopyWith_Variables_Query_Character<TRes> {
  _CopyWithImpl_Variables_Query_Character(
    this._instance,
    this._then,
  );

  final Variables_Query_Character _instance;

  final TRes Function(Variables_Query_Character) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? slug = _undefined}) => _then(Variables_Query_Character._({
        ..._instance._$data,
        if (slug != _undefined && slug != null) 'slug': (slug as String),
      }));
}

class _CopyWithStubImpl_Variables_Query_Character<TRes>
    implements CopyWith_Variables_Query_Character<TRes> {
  _CopyWithStubImpl_Variables_Query_Character(this._res);

  TRes _res;

  call({String? slug}) => _res;
}

class Query_Character {
  Query_Character({
    this.character,
    this.$__typename = 'Query',
  });

  factory Query_Character.fromJson(Map<String, dynamic> json) {
    final l$character = json['character'];
    final l$$__typename = json['__typename'];
    return Query_Character(
      character: l$character == null
          ? null
          : Query_Character_character.fromJson(
              (l$character as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_Character_character? character;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$character = character;
    _resultData['character'] = l$character?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$character = character;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$character,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_Character || runtimeType != other.runtimeType) {
      return false;
    }
    final l$character = character;
    final lOther$character = other.character;
    if (l$character != lOther$character) {
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

extension UtilityExtension_Query_Character on Query_Character {
  CopyWith_Query_Character<Query_Character> get copyWith =>
      CopyWith_Query_Character(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_Character<TRes> {
  factory CopyWith_Query_Character(
    Query_Character instance,
    TRes Function(Query_Character) then,
  ) = _CopyWithImpl_Query_Character;

  factory CopyWith_Query_Character.stub(TRes res) =
      _CopyWithStubImpl_Query_Character;

  TRes call({
    Query_Character_character? character,
    String? $__typename,
  });
  CopyWith_Query_Character_character<TRes> get character;
}

class _CopyWithImpl_Query_Character<TRes>
    implements CopyWith_Query_Character<TRes> {
  _CopyWithImpl_Query_Character(
    this._instance,
    this._then,
  );

  final Query_Character _instance;

  final TRes Function(Query_Character) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? character = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_Character(
        character: character == _undefined
            ? _instance.character
            : (character as Query_Character_character?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Query_Character_character<TRes> get character {
    final local$character = _instance.character;
    return local$character == null
        ? CopyWith_Query_Character_character.stub(_then(_instance))
        : CopyWith_Query_Character_character(
            local$character, (e) => call(character: e));
  }
}

class _CopyWithStubImpl_Query_Character<TRes>
    implements CopyWith_Query_Character<TRes> {
  _CopyWithStubImpl_Query_Character(this._res);

  TRes _res;

  call({
    Query_Character_character? character,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Query_Character_character<TRes> get character =>
      CopyWith_Query_Character_character.stub(_res);
}

const documentNodeQueryCharacter = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Character'),
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
        name: NameNode(value: 'character'),
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
            name: NameNode(value: 'aliasNames'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'animagus'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bloodStatus'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'boggart'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'born'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'died'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'eyeColor'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'familyMembers'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'hairColor'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'height'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'house'),
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
            name: NameNode(value: 'jobs'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'maritalStatus'),
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
            name: NameNode(value: 'nationality'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'patronus'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'romances'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'skinColor'),
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
            name: NameNode(value: 'species'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'titles'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'wands'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'weight'),
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
Query_Character _parserFn_Query_Character(Map<String, dynamic> data) =>
    Query_Character.fromJson(data);
typedef OnQueryComplete_Query_Character = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query_Character?,
);

class Options_Query_Character extends graphql.QueryOptions<Query_Character> {
  Options_Query_Character({
    String? operationName,
    required Variables_Query_Character variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query_Character? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete_Query_Character? onComplete,
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
                    data == null ? null : _parserFn_Query_Character(data),
                  ),
          onError: onError,
          document: documentNodeQueryCharacter,
          parserFn: _parserFn_Query_Character,
        );

  final OnQueryComplete_Query_Character? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions_Query_Character
    extends graphql.WatchQueryOptions<Query_Character> {
  WatchOptions_Query_Character({
    String? operationName,
    required Variables_Query_Character variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query_Character? typedOptimisticResult,
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
          document: documentNodeQueryCharacter,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn_Query_Character,
        );
}

class FetchMoreOptions_Query_Character extends graphql.FetchMoreOptions {
  FetchMoreOptions_Query_Character({
    required graphql.UpdateQuery updateQuery,
    required Variables_Query_Character variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryCharacter,
        );
}

extension ClientExtension_Query_Character on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query_Character>> query_Character(
          Options_Query_Character options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query_Character> watchQuery_Character(
          WatchOptions_Query_Character options) =>
      this.watchQuery(options);
  void writeQuery_Character({
    required Query_Character data,
    required Variables_Query_Character variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryCharacter),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query_Character? readQuery_Character({
    required Variables_Query_Character variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryCharacter),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query_Character.fromJson(result);
  }
}

class Query_Character_character {
  Query_Character_character({
    this.aliasNames,
    this.animagus,
    this.bloodStatus,
    this.boggart,
    this.born,
    this.died,
    this.eyeColor,
    this.familyMembers,
    this.gender,
    this.hairColor,
    this.height,
    this.house,
    this.image,
    this.jobs,
    this.maritalStatus,
    this.name,
    this.nationality,
    this.patronus,
    this.romances,
    this.skinColor,
    required this.slug,
    this.species,
    this.titles,
    this.wands,
    this.weight,
    this.wiki,
    this.$__typename = 'Character',
  });

  factory Query_Character_character.fromJson(Map<String, dynamic> json) {
    final l$aliasNames = json['aliasNames'];
    final l$animagus = json['animagus'];
    final l$bloodStatus = json['bloodStatus'];
    final l$boggart = json['boggart'];
    final l$born = json['born'];
    final l$died = json['died'];
    final l$eyeColor = json['eyeColor'];
    final l$familyMembers = json['familyMembers'];
    final l$gender = json['gender'];
    final l$hairColor = json['hairColor'];
    final l$height = json['height'];
    final l$house = json['house'];
    final l$image = json['image'];
    final l$jobs = json['jobs'];
    final l$maritalStatus = json['maritalStatus'];
    final l$name = json['name'];
    final l$nationality = json['nationality'];
    final l$patronus = json['patronus'];
    final l$romances = json['romances'];
    final l$skinColor = json['skinColor'];
    final l$slug = json['slug'];
    final l$species = json['species'];
    final l$titles = json['titles'];
    final l$wands = json['wands'];
    final l$weight = json['weight'];
    final l$wiki = json['wiki'];
    final l$$__typename = json['__typename'];
    return Query_Character_character(
      aliasNames:
          (l$aliasNames as List<dynamic>?)?.map((e) => (e as String)).toList(),
      animagus: (l$animagus as String?),
      bloodStatus: (l$bloodStatus as String?),
      boggart: (l$boggart as String?),
      born: (l$born as String?),
      died: (l$died as String?),
      eyeColor: (l$eyeColor as String?),
      familyMembers: (l$familyMembers as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList(),
      gender: (l$gender as String?),
      hairColor: (l$hairColor as String?),
      height: (l$height as String?),
      house: (l$house as String?),
      image: (l$image as String?),
      jobs: (l$jobs as List<dynamic>?)?.map((e) => (e as String)).toList(),
      maritalStatus: (l$maritalStatus as String?),
      name: (l$name as String?),
      nationality: (l$nationality as String?),
      patronus: (l$patronus as String?),
      romances:
          (l$romances as List<dynamic>?)?.map((e) => (e as String)).toList(),
      skinColor: (l$skinColor as String?),
      slug: (l$slug as String),
      species: (l$species as String?),
      titles: (l$titles as List<dynamic>?)?.map((e) => (e as String)).toList(),
      wands: (l$wands as List<dynamic>?)?.map((e) => (e as String)).toList(),
      weight: (l$weight as String?),
      wiki: (l$wiki as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String>? aliasNames;

  final String? animagus;

  final String? bloodStatus;

  final String? boggart;

  final String? born;

  final String? died;

  final String? eyeColor;

  final List<String>? familyMembers;

  final String? gender;

  final String? hairColor;

  final String? height;

  final String? house;

  final String? image;

  final List<String>? jobs;

  final String? maritalStatus;

  final String? name;

  final String? nationality;

  final String? patronus;

  final List<String>? romances;

  final String? skinColor;

  final String slug;

  final String? species;

  final List<String>? titles;

  final List<String>? wands;

  final String? weight;

  final String? wiki;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aliasNames = aliasNames;
    _resultData['aliasNames'] = l$aliasNames?.map((e) => e).toList();
    final l$animagus = animagus;
    _resultData['animagus'] = l$animagus;
    final l$bloodStatus = bloodStatus;
    _resultData['bloodStatus'] = l$bloodStatus;
    final l$boggart = boggart;
    _resultData['boggart'] = l$boggart;
    final l$born = born;
    _resultData['born'] = l$born;
    final l$died = died;
    _resultData['died'] = l$died;
    final l$eyeColor = eyeColor;
    _resultData['eyeColor'] = l$eyeColor;
    final l$familyMembers = familyMembers;
    _resultData['familyMembers'] = l$familyMembers?.map((e) => e).toList();
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$hairColor = hairColor;
    _resultData['hairColor'] = l$hairColor;
    final l$height = height;
    _resultData['height'] = l$height;
    final l$house = house;
    _resultData['house'] = l$house;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$jobs = jobs;
    _resultData['jobs'] = l$jobs?.map((e) => e).toList();
    final l$maritalStatus = maritalStatus;
    _resultData['maritalStatus'] = l$maritalStatus;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$nationality = nationality;
    _resultData['nationality'] = l$nationality;
    final l$patronus = patronus;
    _resultData['patronus'] = l$patronus;
    final l$romances = romances;
    _resultData['romances'] = l$romances?.map((e) => e).toList();
    final l$skinColor = skinColor;
    _resultData['skinColor'] = l$skinColor;
    final l$slug = slug;
    _resultData['slug'] = l$slug;
    final l$species = species;
    _resultData['species'] = l$species;
    final l$titles = titles;
    _resultData['titles'] = l$titles?.map((e) => e).toList();
    final l$wands = wands;
    _resultData['wands'] = l$wands?.map((e) => e).toList();
    final l$weight = weight;
    _resultData['weight'] = l$weight;
    final l$wiki = wiki;
    _resultData['wiki'] = l$wiki;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aliasNames = aliasNames;
    final l$animagus = animagus;
    final l$bloodStatus = bloodStatus;
    final l$boggart = boggart;
    final l$born = born;
    final l$died = died;
    final l$eyeColor = eyeColor;
    final l$familyMembers = familyMembers;
    final l$gender = gender;
    final l$hairColor = hairColor;
    final l$height = height;
    final l$house = house;
    final l$image = image;
    final l$jobs = jobs;
    final l$maritalStatus = maritalStatus;
    final l$name = name;
    final l$nationality = nationality;
    final l$patronus = patronus;
    final l$romances = romances;
    final l$skinColor = skinColor;
    final l$slug = slug;
    final l$species = species;
    final l$titles = titles;
    final l$wands = wands;
    final l$weight = weight;
    final l$wiki = wiki;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aliasNames == null ? null : Object.hashAll(l$aliasNames.map((v) => v)),
      l$animagus,
      l$bloodStatus,
      l$boggart,
      l$born,
      l$died,
      l$eyeColor,
      l$familyMembers == null
          ? null
          : Object.hashAll(l$familyMembers.map((v) => v)),
      l$gender,
      l$hairColor,
      l$height,
      l$house,
      l$image,
      l$jobs == null ? null : Object.hashAll(l$jobs.map((v) => v)),
      l$maritalStatus,
      l$name,
      l$nationality,
      l$patronus,
      l$romances == null ? null : Object.hashAll(l$romances.map((v) => v)),
      l$skinColor,
      l$slug,
      l$species,
      l$titles == null ? null : Object.hashAll(l$titles.map((v) => v)),
      l$wands == null ? null : Object.hashAll(l$wands.map((v) => v)),
      l$weight,
      l$wiki,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_Character_character ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aliasNames = aliasNames;
    final lOther$aliasNames = other.aliasNames;
    if (l$aliasNames != null && lOther$aliasNames != null) {
      if (l$aliasNames.length != lOther$aliasNames.length) {
        return false;
      }
      for (int i = 0; i < l$aliasNames.length; i++) {
        final l$aliasNames$entry = l$aliasNames[i];
        final lOther$aliasNames$entry = lOther$aliasNames[i];
        if (l$aliasNames$entry != lOther$aliasNames$entry) {
          return false;
        }
      }
    } else if (l$aliasNames != lOther$aliasNames) {
      return false;
    }
    final l$animagus = animagus;
    final lOther$animagus = other.animagus;
    if (l$animagus != lOther$animagus) {
      return false;
    }
    final l$bloodStatus = bloodStatus;
    final lOther$bloodStatus = other.bloodStatus;
    if (l$bloodStatus != lOther$bloodStatus) {
      return false;
    }
    final l$boggart = boggart;
    final lOther$boggart = other.boggart;
    if (l$boggart != lOther$boggart) {
      return false;
    }
    final l$born = born;
    final lOther$born = other.born;
    if (l$born != lOther$born) {
      return false;
    }
    final l$died = died;
    final lOther$died = other.died;
    if (l$died != lOther$died) {
      return false;
    }
    final l$eyeColor = eyeColor;
    final lOther$eyeColor = other.eyeColor;
    if (l$eyeColor != lOther$eyeColor) {
      return false;
    }
    final l$familyMembers = familyMembers;
    final lOther$familyMembers = other.familyMembers;
    if (l$familyMembers != null && lOther$familyMembers != null) {
      if (l$familyMembers.length != lOther$familyMembers.length) {
        return false;
      }
      for (int i = 0; i < l$familyMembers.length; i++) {
        final l$familyMembers$entry = l$familyMembers[i];
        final lOther$familyMembers$entry = lOther$familyMembers[i];
        if (l$familyMembers$entry != lOther$familyMembers$entry) {
          return false;
        }
      }
    } else if (l$familyMembers != lOther$familyMembers) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$hairColor = hairColor;
    final lOther$hairColor = other.hairColor;
    if (l$hairColor != lOther$hairColor) {
      return false;
    }
    final l$height = height;
    final lOther$height = other.height;
    if (l$height != lOther$height) {
      return false;
    }
    final l$house = house;
    final lOther$house = other.house;
    if (l$house != lOther$house) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$jobs = jobs;
    final lOther$jobs = other.jobs;
    if (l$jobs != null && lOther$jobs != null) {
      if (l$jobs.length != lOther$jobs.length) {
        return false;
      }
      for (int i = 0; i < l$jobs.length; i++) {
        final l$jobs$entry = l$jobs[i];
        final lOther$jobs$entry = lOther$jobs[i];
        if (l$jobs$entry != lOther$jobs$entry) {
          return false;
        }
      }
    } else if (l$jobs != lOther$jobs) {
      return false;
    }
    final l$maritalStatus = maritalStatus;
    final lOther$maritalStatus = other.maritalStatus;
    if (l$maritalStatus != lOther$maritalStatus) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$nationality = nationality;
    final lOther$nationality = other.nationality;
    if (l$nationality != lOther$nationality) {
      return false;
    }
    final l$patronus = patronus;
    final lOther$patronus = other.patronus;
    if (l$patronus != lOther$patronus) {
      return false;
    }
    final l$romances = romances;
    final lOther$romances = other.romances;
    if (l$romances != null && lOther$romances != null) {
      if (l$romances.length != lOther$romances.length) {
        return false;
      }
      for (int i = 0; i < l$romances.length; i++) {
        final l$romances$entry = l$romances[i];
        final lOther$romances$entry = lOther$romances[i];
        if (l$romances$entry != lOther$romances$entry) {
          return false;
        }
      }
    } else if (l$romances != lOther$romances) {
      return false;
    }
    final l$skinColor = skinColor;
    final lOther$skinColor = other.skinColor;
    if (l$skinColor != lOther$skinColor) {
      return false;
    }
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) {
      return false;
    }
    final l$species = species;
    final lOther$species = other.species;
    if (l$species != lOther$species) {
      return false;
    }
    final l$titles = titles;
    final lOther$titles = other.titles;
    if (l$titles != null && lOther$titles != null) {
      if (l$titles.length != lOther$titles.length) {
        return false;
      }
      for (int i = 0; i < l$titles.length; i++) {
        final l$titles$entry = l$titles[i];
        final lOther$titles$entry = lOther$titles[i];
        if (l$titles$entry != lOther$titles$entry) {
          return false;
        }
      }
    } else if (l$titles != lOther$titles) {
      return false;
    }
    final l$wands = wands;
    final lOther$wands = other.wands;
    if (l$wands != null && lOther$wands != null) {
      if (l$wands.length != lOther$wands.length) {
        return false;
      }
      for (int i = 0; i < l$wands.length; i++) {
        final l$wands$entry = l$wands[i];
        final lOther$wands$entry = lOther$wands[i];
        if (l$wands$entry != lOther$wands$entry) {
          return false;
        }
      }
    } else if (l$wands != lOther$wands) {
      return false;
    }
    final l$weight = weight;
    final lOther$weight = other.weight;
    if (l$weight != lOther$weight) {
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

extension UtilityExtension_Query_Character_character
    on Query_Character_character {
  CopyWith_Query_Character_character<Query_Character_character> get copyWith =>
      CopyWith_Query_Character_character(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_Character_character<TRes> {
  factory CopyWith_Query_Character_character(
    Query_Character_character instance,
    TRes Function(Query_Character_character) then,
  ) = _CopyWithImpl_Query_Character_character;

  factory CopyWith_Query_Character_character.stub(TRes res) =
      _CopyWithStubImpl_Query_Character_character;

  TRes call({
    List<String>? aliasNames,
    String? animagus,
    String? bloodStatus,
    String? boggart,
    String? born,
    String? died,
    String? eyeColor,
    List<String>? familyMembers,
    String? gender,
    String? hairColor,
    String? height,
    String? house,
    String? image,
    List<String>? jobs,
    String? maritalStatus,
    String? name,
    String? nationality,
    String? patronus,
    List<String>? romances,
    String? skinColor,
    String? slug,
    String? species,
    List<String>? titles,
    List<String>? wands,
    String? weight,
    String? wiki,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_Character_character<TRes>
    implements CopyWith_Query_Character_character<TRes> {
  _CopyWithImpl_Query_Character_character(
    this._instance,
    this._then,
  );

  final Query_Character_character _instance;

  final TRes Function(Query_Character_character) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aliasNames = _undefined,
    Object? animagus = _undefined,
    Object? bloodStatus = _undefined,
    Object? boggart = _undefined,
    Object? born = _undefined,
    Object? died = _undefined,
    Object? eyeColor = _undefined,
    Object? familyMembers = _undefined,
    Object? gender = _undefined,
    Object? hairColor = _undefined,
    Object? height = _undefined,
    Object? house = _undefined,
    Object? image = _undefined,
    Object? jobs = _undefined,
    Object? maritalStatus = _undefined,
    Object? name = _undefined,
    Object? nationality = _undefined,
    Object? patronus = _undefined,
    Object? romances = _undefined,
    Object? skinColor = _undefined,
    Object? slug = _undefined,
    Object? species = _undefined,
    Object? titles = _undefined,
    Object? wands = _undefined,
    Object? weight = _undefined,
    Object? wiki = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_Character_character(
        aliasNames: aliasNames == _undefined
            ? _instance.aliasNames
            : (aliasNames as List<String>?),
        animagus:
            animagus == _undefined ? _instance.animagus : (animagus as String?),
        bloodStatus: bloodStatus == _undefined
            ? _instance.bloodStatus
            : (bloodStatus as String?),
        boggart:
            boggart == _undefined ? _instance.boggart : (boggart as String?),
        born: born == _undefined ? _instance.born : (born as String?),
        died: died == _undefined ? _instance.died : (died as String?),
        eyeColor:
            eyeColor == _undefined ? _instance.eyeColor : (eyeColor as String?),
        familyMembers: familyMembers == _undefined
            ? _instance.familyMembers
            : (familyMembers as List<String>?),
        gender: gender == _undefined ? _instance.gender : (gender as String?),
        hairColor: hairColor == _undefined
            ? _instance.hairColor
            : (hairColor as String?),
        height: height == _undefined ? _instance.height : (height as String?),
        house: house == _undefined ? _instance.house : (house as String?),
        image: image == _undefined ? _instance.image : (image as String?),
        jobs: jobs == _undefined ? _instance.jobs : (jobs as List<String>?),
        maritalStatus: maritalStatus == _undefined
            ? _instance.maritalStatus
            : (maritalStatus as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        nationality: nationality == _undefined
            ? _instance.nationality
            : (nationality as String?),
        patronus:
            patronus == _undefined ? _instance.patronus : (patronus as String?),
        romances: romances == _undefined
            ? _instance.romances
            : (romances as List<String>?),
        skinColor: skinColor == _undefined
            ? _instance.skinColor
            : (skinColor as String?),
        slug: slug == _undefined || slug == null
            ? _instance.slug
            : (slug as String),
        species:
            species == _undefined ? _instance.species : (species as String?),
        titles:
            titles == _undefined ? _instance.titles : (titles as List<String>?),
        wands: wands == _undefined ? _instance.wands : (wands as List<String>?),
        weight: weight == _undefined ? _instance.weight : (weight as String?),
        wiki: wiki == _undefined ? _instance.wiki : (wiki as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_Character_character<TRes>
    implements CopyWith_Query_Character_character<TRes> {
  _CopyWithStubImpl_Query_Character_character(this._res);

  TRes _res;

  call({
    List<String>? aliasNames,
    String? animagus,
    String? bloodStatus,
    String? boggart,
    String? born,
    String? died,
    String? eyeColor,
    List<String>? familyMembers,
    String? gender,
    String? hairColor,
    String? height,
    String? house,
    String? image,
    List<String>? jobs,
    String? maritalStatus,
    String? name,
    String? nationality,
    String? patronus,
    List<String>? romances,
    String? skinColor,
    String? slug,
    String? species,
    List<String>? titles,
    List<String>? wands,
    String? weight,
    String? wiki,
    String? $__typename,
  }) =>
      _res;
}

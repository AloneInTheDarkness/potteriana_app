import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:potteriana_ult/models/potion/potion.dart';

part 'potions_list_state.freezed.dart';
part 'potions_list_state.g.dart';

@freezed
class PotionsListState with _$PotionsListState {
  const factory PotionsListState({
    String? exceptionWarning,
    @Default([])
    List<Potion> potionsList,
    @Default(false)
    bool isLoading,
    String? cursor,
    String? name,
  }) = _PotionsListState;



  factory PotionsListState.fromJson(Map<String, dynamic> json) =>
      _$PotionsListStateFromJson(json);
}
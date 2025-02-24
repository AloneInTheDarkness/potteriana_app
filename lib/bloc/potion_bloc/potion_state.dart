import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/potion/potion.dart';

part 'potion_state.freezed.dart';
part 'potion_state.g.dart';

@freezed
class PotionState with _$PotionState {
  const factory PotionState({
    String? exceptionWarning,
    required Potion potion,
    @Default(false)
    bool isLoading
  }) = _PotionState;



  factory PotionState.fromJson(Map<String, dynamic> json) =>
      _$PotionStateFromJson(json);
}
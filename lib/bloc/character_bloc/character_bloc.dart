import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potteriana_ult/bloc/character_bloc/character_state.dart';

import '../../repository/api/get_data/get_data.dart';

class CharacterBloc extends Cubit<CharacterState> {
  CharacterBloc(super.initialState,);

  Future<void> fetchDetailResults() async {
    emit(state.copyWith(isLoading: true, exceptionWarning: null));
    try {
      var character = await DataRepository.getCharacter(state.character.slug!);

      emit(state.copyWith(character: character));
    } catch (e) {
      emit(state.copyWith(exceptionWarning: e.toString()));
    }
    emit(state.copyWith(isLoading: false));
  }
}
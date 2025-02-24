import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../repository/api/get_data/get_data.dart';
import 'characters_state.dart';

class CharactersBloc extends Cubit<CharactersState> {
  CharactersBloc(super.initialState,);

  Future<void> fetchResults() async {
    emit(state.copyWith(isLoading: true, exceptionWarning: null));
    try {
      var charactersList = await DataRepository.getCharacters(state.cursor);
      emit(state.copyWith(charactersList: [...state.charactersList,...charactersList.$1,], cursor: charactersList.$2));
    } catch (e){
      emit(state.copyWith(exceptionWarning: e.toString()));
    }
    emit(state.copyWith(isLoading: false));
  }
}

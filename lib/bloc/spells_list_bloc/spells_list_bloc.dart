import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potteriana_ult/bloc/spells_list_bloc/spells_list_state.dart';

import '../../repository/api/get_data/get_data.dart';

class SpellsListBloc extends Cubit<SpellsListState> {
  SpellsListBloc(super.initialState,);

  Future<void> fetchResults() async {
    emit(state.copyWith(isLoading: true, exceptionWarning: null));
    try {
      var spellsList = await DataRepository.getSpellsList(state.cursor);
      emit(state.copyWith(spellsList: [...state.spellsList,...spellsList.$1,], cursor: spellsList.$2));
    } catch (e){
      emit(state.copyWith(exceptionWarning: e.toString()));
    }
    emit(state.copyWith(isLoading: false));
  }
}
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potteriana_ult/bloc/spell_bloc/spell_state.dart';

import '../../repository/api/get_data/get_data.dart';

class SpellBloc extends Cubit<SpellState> {
  SpellBloc(super.initialState,);

  Future<void> fetchDetailResults() async {
    emit(state.copyWith(isLoading: true, exceptionWarning: null));
    try {
      var spell = await DataRepository.getSpell(state.spell.slug!);

      emit(state.copyWith(spell: spell));
    } catch (e) {
      emit(state.copyWith(exceptionWarning: e.toString()));
    }
    emit(state.copyWith(isLoading: false));
  }
}
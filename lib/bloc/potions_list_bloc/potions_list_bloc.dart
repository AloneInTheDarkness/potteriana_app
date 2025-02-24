import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potteriana_ult/bloc/potions_list_bloc/potions_list_state.dart';

import '../../../repository/api/get_data/get_data.dart';

class PotionsListBloc extends Cubit<PotionsListState> {
  PotionsListBloc(super.initialState,);

  Future<void> fetchResults() async {
    emit(state.copyWith(isLoading: true, exceptionWarning: null));
    try {
      var potionsList = await DataRepository.getPotionsList(state.cursor);
      emit(state.copyWith(potionsList: [...state.potionsList,...potionsList.$1,], cursor: potionsList.$2));
    } catch (e){
      emit(state.copyWith(exceptionWarning: e.toString()));
    }
    emit(state.copyWith(isLoading: false));
  }
}
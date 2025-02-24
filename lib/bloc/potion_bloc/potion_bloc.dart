import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:potteriana_ult/bloc/potion_bloc/potion_state.dart';

import '../../repository/api/get_data/get_data.dart';

class PotionBloc extends Cubit<PotionState> {
  PotionBloc(super.initialState,);

  Future<void> fetchDetailResults() async {
    emit(state.copyWith(isLoading: true, exceptionWarning: null));
    try {
      var potion = await DataRepository.getPotion(state.potion.slug!);

      emit(state.copyWith(potion: potion));
    } catch (e) {
      emit(state.copyWith(exceptionWarning: e.toString()));
    }
    emit(state.copyWith(isLoading: false));
  }
}
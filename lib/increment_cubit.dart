import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_manager_impl/flavor_model.dart';

class IncrementCubit extends Cubit<List<IncrementModel>> {
  IncrementCubit() : super([]);

  void increment(IncrementModel model) {
    List<IncrementModel> newState = [...state];
    newState.add(model);
    emit(newState);
  }

  void decrement(IncrementModel model) {
    List<IncrementModel> newState = [...state];
    newState.removeWhere((element) => element.id == model.id);
    emit(newState);
  }
}

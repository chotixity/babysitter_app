import 'package:babysitter_app/models/babysitter.dart';
import 'package:babysitter_app/models/data.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'babysitters_state.dart';
part 'babysitters_bloc.freezed.dart';

class BabysittersBloc extends Cubit<BabysittersState> {
  BabysittersBloc() : super(const BabysittersState.initial());

  void getBabySittersList() async {
    emit(const BabysittersState.loading());
    try {
      final fetchedBabySitters = await getBabySitters();
      emit(BabysittersState.loaded(
        speakers: fetchedBabySitters,
      ));
    } catch (e) {
      emit(BabysittersState.error(e.toString()));
    }
  }
}

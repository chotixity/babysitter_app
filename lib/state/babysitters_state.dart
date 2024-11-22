part of 'babysitters_bloc.dart';

@freezed
class BabysittersState with _$BabysittersState {
  const factory BabysittersState.initial() = _Initial;
  const factory BabysittersState.loading() = _Loading;
  const factory BabysittersState.loaded({
    required List<BabySitter> speakers,
  }) = _Loaded;
  const factory BabysittersState.error(String message) = _Error;
}

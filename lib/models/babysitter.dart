import 'package:freezed_annotation/freezed_annotation.dart';

part 'babysitter.freezed.dart';
part 'babysitter.g.dart';

@freezed
class BabySitter with _$BabySitter {
  factory BabySitter({
    required String firstName,
    required String lastName,
    required String location,
    required String gender,
    required String id,
    String? rating,
    List<Map<String, String>>? reviews,
    required String description,
    required List<String> imageUrl,
    required List<Map<String, double>> pricing,
    @Default(false) bool isFavorite,
  }) = _BabySitter;

  factory BabySitter.fromJson(Map<String, dynamic> json) =>
      _$BabySitterFromJson(json);
}

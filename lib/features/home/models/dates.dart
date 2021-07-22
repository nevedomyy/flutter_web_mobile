import 'package:freezed_annotation/freezed_annotation.dart';

part 'dates.freezed.dart';
part 'dates.g.dart';

@freezed
class Dates with _$Dates {
  factory Dates({
    @JsonKey(name: 'maximum') String? maximum,
    @JsonKey(name: 'minimum') String? minimum,
  }) = _Dates;

  factory Dates.fromJson(Map<String, dynamic> json) => _$DatesFromJson(json);
}

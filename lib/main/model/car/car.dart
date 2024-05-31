import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'car.freezed.dart';
part 'car.g.dart';

@freezed
class Car with _$Car {
    const factory Car({
        @JsonKey(name: "engine")
        String? engine,
        @JsonKey(name: "color")
        String? color,
        @JsonKey(name: "complectation")
        String? complectation,
        @JsonKey(name: "drive")
        String? drive,
        @JsonKey(name: "vin_number")
        String? vinNumber,
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "model")
        String? model,
        @JsonKey(name: "brand")
        String? brand,
        @JsonKey(name: "release_year")
        String? releaseYear,
        @JsonKey(name: "body")
        String? body,
        @JsonKey(name: "transmission")
        String? transmission,
        @JsonKey(name: "wheel")
        String? wheel,
        @JsonKey(name: "img_id")
        int? imgId,
    }) = _Car;

    factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}
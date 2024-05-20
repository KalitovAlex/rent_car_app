import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'abstract_users_model.freezed.dart';
part 'abstract_users_model.g.dart';

@freezed
class AbstractusersModel with _$AbstractusersModel {
    const factory AbstractusersModel({
        @JsonKey(name: "username")
        @Default('') String username,
        @JsonKey(name: "name")
        @Default('') String name,
        @JsonKey(name: "phone_number")
        @Default('') String phoneNumber,
        @JsonKey(name: "email")
        @Default('') String email,
        @JsonKey(name: "password")
        @Default('') String password,
    }) = _AbstractusersModel;

    factory AbstractusersModel.fromJson(Map<String, dynamic> json) => _$AbstractusersModelFromJson(json);
}

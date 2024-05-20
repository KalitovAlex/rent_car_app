import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_model.freezed.dart';
part 'users_model.g.dart';

@freezed
class UsersModel with _$UsersModel {
      factory UsersModel({
        @JsonKey(name: "username")
        @Default(null) username,
        @JsonKey(name: "name")
        @Default(null) name,
        @JsonKey(name: "phone_number")
        @Default(null) phoneNumber,
        @JsonKey(name: "email")
        @Default(null) email,
        @JsonKey(name: "password")
        @Default(null) password,
    }) = _UsersModel;

    factory UsersModel.fromJson(Map<String, dynamic> json) => _$UsersModelFromJson(json);
}

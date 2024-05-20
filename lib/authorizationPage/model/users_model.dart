import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_model.freezed.dart';
part 'users_model.g.dart';

@freezed
abstract class UsersModel with _$UsersModel {
    const factory UsersModel({
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
    }) = _UsersModel;

    factory UsersModel.fromJson(Map<String, dynamic> json) => _$UsersModelFromJson(json);
}

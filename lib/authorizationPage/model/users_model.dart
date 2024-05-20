import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_model.freezed.dart';
part 'users_model.g.dart';

@freezed
class UsersModel with _$UsersModel {
    const factory UsersModel({
        @JsonKey(name: "username")
        required String username,
        @JsonKey(name: "name")
        required String name,
        @JsonKey(name: "phone_number")
        required String phoneNumber,
        @JsonKey(name: "email")
        required String email,
        @JsonKey(name: "password")
        required String password,
    }) = _UsersModel;

    factory UsersModel.fromJson(Map<String, dynamic> json) => _$UsersModelFromJson(json);
}

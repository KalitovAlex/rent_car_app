import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
    const factory User({
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
        @JsonKey(name: 'id')
        @Default(0) int id
    }) = _User;

    factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}


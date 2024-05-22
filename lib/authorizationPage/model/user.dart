import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
    const factory User({
        @JsonKey(name: "username")
        String? username,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "phone_number")
        String? phoneNumber,
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "password")
        String? password,
        @JsonKey(name: 'id')
        int? id
    }) = _User;

    factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}


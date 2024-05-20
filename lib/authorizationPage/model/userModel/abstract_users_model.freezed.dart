// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'abstract_users_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AbstractUsersModel _$AbstractUsersModelFromJson(Map<String, dynamic> json) {
  return _AbstractUsersModel.fromJson(json);
}

/// @nodoc
mixin _$AbstractUsersModel {
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbstractUsersModelCopyWith<AbstractUsersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbstractUsersModelCopyWith<$Res> {
  factory $AbstractUsersModelCopyWith(
          AbstractUsersModel value, $Res Function(AbstractUsersModel) then) =
      _$AbstractUsersModelCopyWithImpl<$Res, AbstractUsersModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "username") String username,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "password") String password});
}

/// @nodoc
class _$AbstractUsersModelCopyWithImpl<$Res, $Val extends AbstractUsersModel>
    implements $AbstractUsersModelCopyWith<$Res> {
  _$AbstractUsersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AbstractUsersModelImplCopyWith<$Res>
    implements $AbstractUsersModelCopyWith<$Res> {
  factory _$$AbstractUsersModelImplCopyWith(_$AbstractUsersModelImpl value,
          $Res Function(_$AbstractUsersModelImpl) then) =
      __$$AbstractUsersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "username") String username,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "password") String password});
}

/// @nodoc
class __$$AbstractUsersModelImplCopyWithImpl<$Res>
    extends _$AbstractUsersModelCopyWithImpl<$Res, _$AbstractUsersModelImpl>
    implements _$$AbstractUsersModelImplCopyWith<$Res> {
  __$$AbstractUsersModelImplCopyWithImpl(_$AbstractUsersModelImpl _value,
      $Res Function(_$AbstractUsersModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AbstractUsersModelImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AbstractUsersModelImpl implements _AbstractUsersModel {
  const _$AbstractUsersModelImpl(
      {@JsonKey(name: "username") this.username = '',
      @JsonKey(name: "name") this.name = '',
      @JsonKey(name: "phone_number") this.phoneNumber = '',
      @JsonKey(name: "email") this.email = '',
      @JsonKey(name: "password") this.password = ''});

  factory _$AbstractUsersModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbstractUsersModelImplFromJson(json);

  @override
  @JsonKey(name: "username")
  final String username;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "phone_number")
  final String phoneNumber;
  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "password")
  final String password;

  @override
  String toString() {
    return 'AbstractUsersModel(username: $username, name: $name, phoneNumber: $phoneNumber, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbstractUsersModelImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, username, name, phoneNumber, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbstractUsersModelImplCopyWith<_$AbstractUsersModelImpl> get copyWith =>
      __$$AbstractUsersModelImplCopyWithImpl<_$AbstractUsersModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbstractUsersModelImplToJson(
      this,
    );
  }
}

abstract class _AbstractUsersModel implements AbstractUsersModel {
  const factory _AbstractUsersModel(
          {@JsonKey(name: "username") final String username,
          @JsonKey(name: "name") final String name,
          @JsonKey(name: "phone_number") final String phoneNumber,
          @JsonKey(name: "email") final String email,
          @JsonKey(name: "password") final String password}) =
      _$AbstractUsersModelImpl;

  factory _AbstractUsersModel.fromJson(Map<String, dynamic> json) =
      _$AbstractUsersModelImpl.fromJson;

  @override
  @JsonKey(name: "username")
  String get username;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "phone_number")
  String get phoneNumber;
  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "password")
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$AbstractUsersModelImplCopyWith<_$AbstractUsersModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

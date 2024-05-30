// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentImpl _$$DocumentImplFromJson(Map<String, dynamic> json) =>
    _$DocumentImpl(
      name: json['name'] as String?,
      birthDate: json['birth_date'] as String?,
      dateOfIssue: json['date_of_issue'] as String?,
      endDate: json['end_date'] as String?,
      issuedBy: json['issued_by'] as String?,
      number: json['number'] as String?,
      id: (json['id'] as num?)?.toInt(),
      whereIssued: json['where_issued'] as String?,
      categories: json['categories'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DocumentImplToJson(_$DocumentImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'birth_date': instance.birthDate,
      'date_of_issue': instance.dateOfIssue,
      'end_date': instance.endDate,
      'issued_by': instance.issuedBy,
      'number': instance.number,
      'id': instance.id,
      'where_issued': instance.whereIssued,
      'categories': instance.categories,
      'user_id': instance.userId,
    };

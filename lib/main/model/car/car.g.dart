// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarImpl _$$CarImplFromJson(Map<String, dynamic> json) => _$CarImpl(
      engine: json['engine'] as String?,
      color: json['color'] as String?,
      complectation: json['complectation'] as String?,
      drive: json['drive'] as String?,
      vinNumber: json['vin_number'] as String?,
      id: (json['id'] as num?)?.toInt(),
      model: json['model'] as String?,
      brand: json['brand'] as String?,
      releaseYear: json['release_year'] as String?,
      body: json['body'] as String?,
      transmission: json['transmission'] as String?,
      wheel: json['wheel'] as String?,
      imageName: json['image_name'] as String?,
    );

Map<String, dynamic> _$$CarImplToJson(_$CarImpl instance) => <String, dynamic>{
      'engine': instance.engine,
      'color': instance.color,
      'complectation': instance.complectation,
      'drive': instance.drive,
      'vin_number': instance.vinNumber,
      'id': instance.id,
      'model': instance.model,
      'brand': instance.brand,
      'release_year': instance.releaseYear,
      'body': instance.body,
      'transmission': instance.transmission,
      'wheel': instance.wheel,
      'image_name': instance.imageName,
    };

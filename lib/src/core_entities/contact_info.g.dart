// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactInfo _$ContactInfoFromJson(Map<String, dynamic> json) => ContactInfo(
      id: json['id'] as String,
      contactSourceType:
          $enumDecode(_$ContactSourceTypeEnumMap, json['contactSourceType']),
      name: json['name'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      bloodGroup: $enumDecodeNullable(_$BloodGroupEnumMap, json['bloodGroup']),
      locationCoordinates: json['locationCoordinates'] == null
          ? null
          : LatLong.fromJson(
              json['locationCoordinates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ContactInfoToJson(ContactInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contactSourceType':
          _$ContactSourceTypeEnumMap[instance.contactSourceType]!,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'locationCoordinates': instance.locationCoordinates,
      'bloodGroup': _$BloodGroupEnumMap[instance.bloodGroup],
    };

const _$ContactSourceTypeEnumMap = {
  ContactSourceType.offline: 'offline',
  ContactSourceType.online: 'online',
};

const _$BloodGroupEnumMap = {
  BloodGroup.APositive: 'APositive',
  BloodGroup.ANegative: 'ANegative',
  BloodGroup.ABPositive: 'ABPositive',
  BloodGroup.ABNegative: 'ABNegative',
  BloodGroup.BPositive: 'BPositive',
  BloodGroup.BNegative: 'BNegative',
  BloodGroup.OPositive: 'OPositive',
  BloodGroup.ONegative: 'ONegative',
  BloodGroup.Other: 'Other',
  BloodGroup.Unknown: 'Unknown',
};

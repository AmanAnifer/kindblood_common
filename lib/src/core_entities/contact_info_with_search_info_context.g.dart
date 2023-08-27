// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_info_with_search_info_context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactInfoWithSearchInfoContext _$ContactInfoWithSearchInfoContextFromJson(
        Map<String, dynamic> json) =>
    ContactInfoWithSearchInfoContext(
      contactInfo:
          ContactInfo.fromJson(json['contactInfo'] as Map<String, dynamic>),
      bloodCompatibility: json['bloodCompatibility'] == null
          ? null
          : BloodCompatibility.fromJson(
              json['bloodCompatibility'] as Map<String, dynamic>),
      distanceFromUser: json['distanceFromUser'] == null
          ? null
          : LengthUnit.fromJson(
              json['distanceFromUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ContactInfoWithSearchInfoContextToJson(
        ContactInfoWithSearchInfoContext instance) =>
    <String, dynamic>{
      'contactInfo': instance.contactInfo,
      'distanceFromUser': instance.distanceFromUser,
      'bloodCompatibility': instance.bloodCompatibility,
    };

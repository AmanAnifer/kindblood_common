import 'package:kindblood_common/core_entities.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'contact_info.g.dart';

enum ContactSourceType { offline, online }

@JsonSerializable()
class ContactInfo extends Equatable {
  final String id;
  final ContactSourceType contactSourceType;
  final String? name;
  final String? phoneNumber;
  final LatLong? locationCoordinates;
  final BloodGroup? bloodGroup;
  const ContactInfo({
    required this.id,
    required this.contactSourceType,
    this.name,
    this.phoneNumber,
    this.bloodGroup,
    this.locationCoordinates,
  });
  @override
  List<Object?> get props => [
        id,
        contactSourceType,
        name,
        phoneNumber,
        locationCoordinates,
        bloodGroup
      ];

  factory ContactInfo.fromJson(Map<String, dynamic> json) =>
      _$ContactInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ContactInfoToJson(this);
}

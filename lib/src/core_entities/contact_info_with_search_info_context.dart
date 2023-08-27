import 'package:kindblood_common/core_entities.dart';
import 'package:json_annotation/json_annotation.dart';
part 'contact_info_with_search_info_context.g.dart';

@JsonSerializable()
class ContactInfoWithSearchInfoContext {
  /*
  This is the ContactInfo with extra information generated
  using SearchInfo, like distance from user and blood 
  compatability info 
  // */
  final ContactInfo contactInfo;
  final LengthUnit? distanceFromUser;
  final BloodCompatibility? bloodCompatibility;
  const ContactInfoWithSearchInfoContext({
    required this.contactInfo,
    this.bloodCompatibility,
    this.distanceFromUser,
  });
  // factory ContactInfoWithSearchInfoContext.fromContactInfo({
  //   required ContactInfo contactInfo,
  //   LengthUnit? distanceFromUser,
  //   BloodCompatibility? bloodCompatibility,
  // }) {
  //   return ContactInfoWithSearchInfoContext(
  //     id: contactInfo.id,
  //     name: contactInfo.name,
  //     phone: contactInfo.phone,
  //     bloodGroup: contactInfo.bloodGroup,
  //     locationCoordinates: contactInfo.locationCoordinates,
  //     distanceFromUser: distanceFromUser,
  //     bloodCompatibility: bloodCompatibility,
  //   );
  // }

  factory ContactInfoWithSearchInfoContext.fromJson(
          Map<String, dynamic> json) =>
      _$ContactInfoWithSearchInfoContextFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ContactInfoWithSearchInfoContextToJson(this);
}

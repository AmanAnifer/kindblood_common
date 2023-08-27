import 'package:kindblood_common/core_entities.dart';
import 'package:kindblood_common/utils.dart';

ContactInfoWithSearchInfoContext getContactInfoWithContext({
  required ContactInfo contact,
  required SearchInfo searchInfo,
}) {
  // Returns the ContactInfo with extra information which depends on the searchInfo
  // That is, the distance b/w and blood compatiblity result
  LengthUnit? distance;
  BloodCompatibility? bloodCompatibility;
  if (contact.locationCoordinates != null) {
    distance = getDistanceBetweenTwoLatLongs(
      from: searchInfo.userLocation,
      to: contact.locationCoordinates!,
    );
  }
  if (contact.bloodGroup != null) {
    bloodCompatibility = getBloodCompatibility(
      receiver: searchInfo.bloodGroup,
      donor: contact.bloodGroup!,
    );
  }

  return ContactInfoWithSearchInfoContext(
    contactInfo: contact,
    distanceFromUser: distance,
    bloodCompatibility: bloodCompatibility,
  );
}

import 'package:kindblood_common/core_entities.dart';
import 'get_blood_compatibility.dart';
import 'calculate_distance.dart';

typedef FilterFunction = bool Function({
  required ContactInfo contact,
  required SearchInfo searchInfo,
});

class ContactFilterUtil {
  final List<FilterFunction> _filterFunctions = [
    _doesContactPassBloodFilter,
    _doesContactPassDistanceFilter,
  ];

  void addFilterFunction(FilterFunction filterFunction) {
    _filterFunctions.add(filterFunction);
  }

  bool runAllFilters(
      {required ContactInfo contact, required SearchInfo searchInfo}) {
    for (var filter in _filterFunctions) {
      if (!filter(contact: contact, searchInfo: searchInfo)) {
        // If any filter fails, short circuit and return immediately to prevent
        // unnecessary extra filter checks
        return false;
      }
    }
    // If all filters return true
    return true;
  }
}

bool _doesContactPassBloodFilter(
    {required ContactInfo contact, required SearchInfo searchInfo}) {
  if (searchInfo.bloodGroup == BloodGroup.Unknown) {
    return true;
  } else {
    if (getBloodCompatibility(
      receiver: searchInfo.bloodGroup,
      donor: contact.bloodGroup ?? BloodGroup.Unknown,
    ) is Compatible) {
      return true;
    } else {
      return false;
    }
  }
}

bool _doesContactPassDistanceFilter(
    {required ContactInfo contact, required SearchInfo searchInfo}) {
  final contactLocation = contact.locationCoordinates;
  if (searchInfo.maxDistance is InfiniteMeter) {
    return true;
  } else if (contactLocation == null) {
    return false;
  } else {
    final distance = getDistanceBetweenTwoLatLongs(
        from: searchInfo.userLocation, to: contactLocation);
    if (distance.lengthInMeters > searchInfo.maxDistance.lengthInMeters) {
      return false;
    } else {
      return true;
    }
    // If 'within' is no limit then we want to return everything
  }
}

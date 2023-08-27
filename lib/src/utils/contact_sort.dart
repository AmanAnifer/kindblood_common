import 'package:kindblood_common/core_entities.dart';

int _sortByBloodGroup(
    ContactInfoWithSearchInfoContext a, ContactInfoWithSearchInfoContext b) {
  int compareNum;
  if (a.bloodCompatibility == b.bloodCompatibility) {
    compareNum = 0;
  } else if (a.bloodCompatibility is CompatibleSame) {
    compareNum = -1;
  } else if (b.bloodCompatibility is CompatibleSame) {
    compareNum = 1;
  } else if (a.bloodCompatibility is CompatibleButDifferent) {
    compareNum = -1;
  } else if (b.bloodCompatibility is CompatibleButDifferent) {
    compareNum = 1;
  } else {
    compareNum = 0;
  }
  return compareNum;
}

int _sortByDistance(
    ContactInfoWithSearchInfoContext a, ContactInfoWithSearchInfoContext b) {
  int compareNum;
  if (a.distanceFromUser != null && b.distanceFromUser != null) {
    compareNum = a.distanceFromUser!.lengthInMeters
        .compareTo(b.distanceFromUser!.lengthInMeters);
  } else {
    if (a.distanceFromUser == null) {
      compareNum = 1;
    } else if (b.distanceFromUser == null) {
      compareNum = -1;
    } else {
      compareNum = 0;
    }
  }
  return compareNum;
}

class ContactComparator {
  final SortBy sortBy;
  const ContactComparator({required this.sortBy});

  Comparator<ContactInfoWithSearchInfoContext> get comparator {
    Comparator<ContactInfoWithSearchInfoContext> comparatorFunction;
    switch (sortBy.sortByColumn) {
      case SortByColumn.distance:
        comparatorFunction = _sortByDistance;
      case SortByColumn.bloodGroup:
        comparatorFunction = _sortByBloodGroup;
    }

    return sortBy.order == Order.best
        ? comparatorFunction
        : (a, b) => comparatorFunction(b, a);
    // If we need the worst, then swap the args to get the worst sort
  }
}

import 'package:kindblood_common/core_entities.dart';
// import '../../../../core/entities/blood_group.dart';
// import '../../../../core/entities/length_units.dart';
// import '../../../../core/entities/location_entity.dart';

enum ContactSearchMode { offline, online }

class SearchFilter extends SearchInfo {
  SearchInfo get searchInfo => this;

  final ContactSearchMode contactSearchMode;
  SearchFilter({
    required this.contactSearchMode,
    required super.bloodGroup,
    required super.userLocation,
    required super.maxDistance,
    super.bloodCompatibility = const Compatible(),
    super.showAnonVolunteers = true,
  });
  SearchFilter copyWith({
    ContactSearchMode? contactSearchMode,
    BloodGroup? bloodGroup,
    LatLong? userLocation,
    LengthUnit? maxDistance,
    bool? showAnonVolunteers,
  }) {
    return SearchFilter(
      contactSearchMode: contactSearchMode ?? this.contactSearchMode,
      bloodGroup: bloodGroup ?? this.bloodGroup,
      userLocation: userLocation ?? this.userLocation,
      maxDistance: maxDistance ?? this.maxDistance,
      showAnonVolunteers: showAnonVolunteers ?? this.showAnonVolunteers,
    );
  }

  @override
  List<Object?> get props => [
        bloodGroup,
        userLocation,
        maxDistance,
        bloodCompatibility,
        showAnonVolunteers,
        contactSearchMode
      ];
}

// class OfflineFilter implements SearchFilter {
//   @override
//   final BloodGroup? bloodGroup;
//   @override
//   final double? maxDistanceInMeters;
//   const OfflineFilter({
//     this.bloodGroup,
//     this.maxDistanceInMeters,
//   });
// }

// class OnlineFilter implements SearchFilter {
//   @override
//   final BloodGroup? bloodGroup;
//   @override
//   final double? maxDistanceInMeters;
//   final bool? showAnonVolunteers;

//   OnlineFilter({
//     this.bloodGroup,
//     this.maxDistanceInMeters,
//     this.showAnonVolunteers,
//   });
// }

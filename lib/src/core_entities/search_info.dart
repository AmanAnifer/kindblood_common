import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:kindblood_common/core_entities.dart';

part 'search_info.g.dart';

@JsonSerializable(anyMap: true, explicitToJson: true)
class SearchInfo extends Equatable {
  final BloodGroup bloodGroup;
  final LatLong userLocation;
  final LengthUnit maxDistance;
  final BloodCompatibility bloodCompatibility;
  final bool showAnonVolunteers;
  const SearchInfo({
    required this.bloodGroup,
    required this.userLocation,
    required this.maxDistance,
    this.bloodCompatibility = const Compatible(),
    this.showAnonVolunteers = true,
  });

  @override
  List<Object?> get props => [
        bloodGroup,
        userLocation,
        maxDistance,
        bloodCompatibility,
        showAnonVolunteers,
      ];

  factory SearchInfo.fromJson(Map<String, dynamic> json) =>
      _$SearchInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SearchInfoToJson(this);

  // Map<String, dynamic> toJson() {
  //   return {
  //     "SearchInfo": (this).runtimeType.toString(),
  //     "bloodGroup": BloodGroupToJson(bloodGroup),
  //     "maxDistance": maxDistance.toJson(),
  //     "bloodCompatibility": bloodCompatibility.toJson(),
  //   };
  // }

  // factory SearchInfo.fromJson(Map<String, dynamic> json) {
  //   var typeString = json["SearchInfo"];
  //   switch (typeString) {
  //     case "OfflineSearchInfo":
  //       return OfflineSearchInfo(bloodGroup: bloodGroup, userLocation: userLocation, maxDistance: maxDistance);
  //     case "CompatibleButDifferent":
  //       return const CompatibleButDifferent();
  //     case "Incompatible":
  //     default:
  //       return const Incompatible();
  //   }
  // }
}

// class OfflineSearchInfo extends SearchInfo {
//   const OfflineSearchInfo({
//     required super.bloodGroup,
//     required super.userLocation,
//     required super.maxDistance,
//     super.bloodCompatibility,
//   });

//   @override
//   List<Object?> get props => [
//         bloodGroup,
//         userLocation,
//         maxDistance,
//         bloodCompatibility,
//       ];
// }

// @JsonSerializable(anyMap: true, explicitToJson: true)
// class OnlineSearchInfo extends SearchInfo {
//   final bool showAnonVolunteers;
//   const OnlineSearchInfo({
//     required super.bloodGroup,
//     required super.userLocation,
//     required super.maxDistance,
//     super.bloodCompatibility,
//     this.showAnonVolunteers = true,
//   });

//   factory OnlineSearchInfo.fromJson(Map<String, dynamic> json) =>
//       _$OnlineSearchInfoFromJson(json);

//   Map<String, dynamic> toJson() => _$OnlineSearchInfoToJson(this);
// }

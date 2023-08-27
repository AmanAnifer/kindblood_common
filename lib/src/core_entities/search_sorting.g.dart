// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_sorting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SortBy _$SortByFromJson(Map<String, dynamic> json) => SortBy(
      sortByColumn:
          $enumDecodeNullable(_$SortByColumnEnumMap, json['sortByColumn']) ??
              SortByColumn.distance,
      order: $enumDecodeNullable(_$OrderEnumMap, json['order']) ?? Order.best,
    );

Map<String, dynamic> _$SortByToJson(SortBy instance) => <String, dynamic>{
      'sortByColumn': _$SortByColumnEnumMap[instance.sortByColumn]!,
      'order': _$OrderEnumMap[instance.order]!,
    };

const _$SortByColumnEnumMap = {
  SortByColumn.distance: 'distance',
  SortByColumn.bloodGroup: 'bloodGroup',
};

const _$OrderEnumMap = {
  Order.best: 'best',
  Order.worst: 'worst',
};

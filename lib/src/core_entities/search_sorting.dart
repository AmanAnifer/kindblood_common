import 'package:json_annotation/json_annotation.dart';
part 'search_sorting.g.dart';

enum SortByColumn { distance, bloodGroup }

enum Order { best, worst }

@JsonSerializable()
class SortBy {
  final SortByColumn sortByColumn;
  final Order order;
  SortBy({
    this.sortByColumn = SortByColumn.distance,
    this.order = Order.best,
  });

  Map<String, dynamic> toJson() => _$SortByToJson(this);

  factory SortBy.fromJson(Map<String, dynamic> json) => _$SortByFromJson(json);
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:kubenav/models/kubernetes/helpers.dart';

class IoK8sApiEventsV1beta1EventSeries {
  /// Returns a new [IoK8sApiEventsV1beta1EventSeries] instance.
  IoK8sApiEventsV1beta1EventSeries({
    required this.count,
    required this.lastObservedTime,
  });

  /// count is the number of occurrences in this series up to the last heartbeat time.
  int count;

  /// MicroTime is version of Time with microsecond level precision.
  DateTime lastObservedTime;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IoK8sApiEventsV1beta1EventSeries &&
          other.count == count &&
          other.lastObservedTime == lastObservedTime;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (count.hashCode) + (lastObservedTime.hashCode);

  @override
  String toString() =>
      'IoK8sApiEventsV1beta1EventSeries[count=$count, lastObservedTime=$lastObservedTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'count'] = count;
    json[r'lastObservedTime'] = lastObservedTime.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [IoK8sApiEventsV1beta1EventSeries] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiEventsV1beta1EventSeries? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IoK8sApiEventsV1beta1EventSeries[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IoK8sApiEventsV1beta1EventSeries[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiEventsV1beta1EventSeries(
        count: mapValueOfType<int>(json, r'count')!,
        lastObservedTime: mapDateTime(json, r'lastObservedTime', '')!,
      );
    }
    return null;
  }

  static List<IoK8sApiEventsV1beta1EventSeries>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IoK8sApiEventsV1beta1EventSeries>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiEventsV1beta1EventSeries.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiEventsV1beta1EventSeries> mapFromJson(
      dynamic json) {
    final map = <String, IoK8sApiEventsV1beta1EventSeries>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiEventsV1beta1EventSeries.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiEventsV1beta1EventSeries-objects as value to a dart map
  static Map<String, List<IoK8sApiEventsV1beta1EventSeries>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<IoK8sApiEventsV1beta1EventSeries>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiEventsV1beta1EventSeries.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'count',
    'lastObservedTime',
  };
}

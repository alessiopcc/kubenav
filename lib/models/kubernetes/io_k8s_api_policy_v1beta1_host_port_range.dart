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

class IoK8sApiPolicyV1beta1HostPortRange {
  /// Returns a new [IoK8sApiPolicyV1beta1HostPortRange] instance.
  IoK8sApiPolicyV1beta1HostPortRange({
    required this.max,
    required this.min,
  });

  /// max is the end of the range, inclusive.
  int max;

  /// min is the start of the range, inclusive.
  int min;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IoK8sApiPolicyV1beta1HostPortRange &&
          other.max == max &&
          other.min == min;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (max.hashCode) + (min.hashCode);

  @override
  String toString() => 'IoK8sApiPolicyV1beta1HostPortRange[max=$max, min=$min]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'max'] = max;
    json[r'min'] = min;
    return json;
  }

  /// Returns a new [IoK8sApiPolicyV1beta1HostPortRange] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiPolicyV1beta1HostPortRange? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IoK8sApiPolicyV1beta1HostPortRange[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IoK8sApiPolicyV1beta1HostPortRange[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiPolicyV1beta1HostPortRange(
        max: mapValueOfType<int>(json, r'max')!,
        min: mapValueOfType<int>(json, r'min')!,
      );
    }
    return null;
  }

  static List<IoK8sApiPolicyV1beta1HostPortRange>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IoK8sApiPolicyV1beta1HostPortRange>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiPolicyV1beta1HostPortRange.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiPolicyV1beta1HostPortRange> mapFromJson(
      dynamic json) {
    final map = <String, IoK8sApiPolicyV1beta1HostPortRange>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiPolicyV1beta1HostPortRange.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiPolicyV1beta1HostPortRange-objects as value to a dart map
  static Map<String, List<IoK8sApiPolicyV1beta1HostPortRange>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<IoK8sApiPolicyV1beta1HostPortRange>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiPolicyV1beta1HostPortRange.listFromJson(
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
    'max',
    'min',
  };
}

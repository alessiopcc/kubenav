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
import 'package:kubenav/models/kubernetes/io_k8s_api_batch_v1_job_template_spec.dart';

class IoK8sApiBatchV1CronJobSpec {
  /// Returns a new [IoK8sApiBatchV1CronJobSpec] instance.
  IoK8sApiBatchV1CronJobSpec({
    this.concurrencyPolicy,
    this.failedJobsHistoryLimit,
    required this.jobTemplate,
    required this.schedule,
    this.startingDeadlineSeconds,
    this.successfulJobsHistoryLimit,
    this.suspend,
  });

  /// Specifies how to treat concurrent executions of a Job. Valid values are: - \"Allow\" (default): allows CronJobs to run concurrently; - \"Forbid\": forbids concurrent runs, skipping next run if previous run hasn't finished yet; - \"Replace\": cancels currently running job and replaces it with a new one  Possible enum values:  - `\"Allow\"` allows CronJobs to run concurrently.  - `\"Forbid\"` forbids concurrent runs, skipping next run if previous hasn't finished yet.  - `\"Replace\"` cancels currently running job and replaces it with a new one.
  IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnum? concurrencyPolicy;

  /// The number of failed finished jobs to retain. Value must be non-negative integer. Defaults to 1.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? failedJobsHistoryLimit;

  IoK8sApiBatchV1JobTemplateSpec jobTemplate;

  /// The schedule in Cron format, see https://en.wikipedia.org/wiki/Cron.
  String schedule;

  /// Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startingDeadlineSeconds;

  /// The number of successful finished jobs to retain. Value must be non-negative integer. Defaults to 3.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? successfulJobsHistoryLimit;

  /// This flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? suspend;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IoK8sApiBatchV1CronJobSpec &&
          other.concurrencyPolicy == concurrencyPolicy &&
          other.failedJobsHistoryLimit == failedJobsHistoryLimit &&
          other.jobTemplate == jobTemplate &&
          other.schedule == schedule &&
          other.startingDeadlineSeconds == startingDeadlineSeconds &&
          other.successfulJobsHistoryLimit == successfulJobsHistoryLimit &&
          other.suspend == suspend;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (concurrencyPolicy == null ? 0 : concurrencyPolicy!.hashCode) +
      (failedJobsHistoryLimit == null ? 0 : failedJobsHistoryLimit!.hashCode) +
      (jobTemplate.hashCode) +
      (schedule.hashCode) +
      (startingDeadlineSeconds == null
          ? 0
          : startingDeadlineSeconds!.hashCode) +
      (successfulJobsHistoryLimit == null
          ? 0
          : successfulJobsHistoryLimit!.hashCode) +
      (suspend == null ? 0 : suspend!.hashCode);

  @override
  String toString() =>
      'IoK8sApiBatchV1CronJobSpec[concurrencyPolicy=$concurrencyPolicy, failedJobsHistoryLimit=$failedJobsHistoryLimit, jobTemplate=$jobTemplate, schedule=$schedule, startingDeadlineSeconds=$startingDeadlineSeconds, successfulJobsHistoryLimit=$successfulJobsHistoryLimit, suspend=$suspend]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (concurrencyPolicy != null) {
      json[r'concurrencyPolicy'] = concurrencyPolicy;
    }
    if (failedJobsHistoryLimit != null) {
      json[r'failedJobsHistoryLimit'] = failedJobsHistoryLimit;
    }
    json[r'jobTemplate'] = jobTemplate;
    json[r'schedule'] = schedule;
    if (startingDeadlineSeconds != null) {
      json[r'startingDeadlineSeconds'] = startingDeadlineSeconds;
    }
    if (successfulJobsHistoryLimit != null) {
      json[r'successfulJobsHistoryLimit'] = successfulJobsHistoryLimit;
    }
    if (suspend != null) {
      json[r'suspend'] = suspend;
    }
    return json;
  }

  /// Returns a new [IoK8sApiBatchV1CronJobSpec] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiBatchV1CronJobSpec? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IoK8sApiBatchV1CronJobSpec[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IoK8sApiBatchV1CronJobSpec[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiBatchV1CronJobSpec(
        concurrencyPolicy:
            IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnum.fromJson(
                json[r'concurrencyPolicy']),
        failedJobsHistoryLimit:
            mapValueOfType<int>(json, r'failedJobsHistoryLimit'),
        jobTemplate:
            IoK8sApiBatchV1JobTemplateSpec.fromJson(json[r'jobTemplate'])!,
        schedule: mapValueOfType<String>(json, r'schedule')!,
        startingDeadlineSeconds:
            mapValueOfType<int>(json, r'startingDeadlineSeconds'),
        successfulJobsHistoryLimit:
            mapValueOfType<int>(json, r'successfulJobsHistoryLimit'),
        suspend: mapValueOfType<bool>(json, r'suspend'),
      );
    }
    return null;
  }

  static List<IoK8sApiBatchV1CronJobSpec>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IoK8sApiBatchV1CronJobSpec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiBatchV1CronJobSpec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiBatchV1CronJobSpec> mapFromJson(dynamic json) {
    final map = <String, IoK8sApiBatchV1CronJobSpec>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiBatchV1CronJobSpec.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiBatchV1CronJobSpec-objects as value to a dart map
  static Map<String, List<IoK8sApiBatchV1CronJobSpec>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<IoK8sApiBatchV1CronJobSpec>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiBatchV1CronJobSpec.listFromJson(
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
    'jobTemplate',
    'schedule',
  };
}

/// Specifies how to treat concurrent executions of a Job. Valid values are: - \"Allow\" (default): allows CronJobs to run concurrently; - \"Forbid\": forbids concurrent runs, skipping next run if previous run hasn't finished yet; - \"Replace\": cancels currently running job and replaces it with a new one  Possible enum values:  - `\"Allow\"` allows CronJobs to run concurrently.  - `\"Forbid\"` forbids concurrent runs, skipping next run if previous hasn't finished yet.  - `\"Replace\"` cancels currently running job and replaces it with a new one.
class IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnum {
  /// Instantiate a new enum with the provided [value].
  const IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const allow =
      IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnum._(r'Allow');
  static const forbid =
      IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnum._(r'Forbid');
  static const replace =
      IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnum._(r'Replace');

  /// List of all possible values in this [enum][IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnum].
  static const values = <IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnum>[
    allow,
    forbid,
    replace,
  ];

  static IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnum? fromJson(
          dynamic value) =>
      IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnumTypeTransformer()
          .decode(value);

  static List<IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value =
            IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnum] to String,
/// and [decode] dynamic data back to [IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnum].
class IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnumTypeTransformer {
  factory IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnumTypeTransformer() =>
      _instance ??=
          const IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnumTypeTransformer
              ._();

  const IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnumTypeTransformer._();

  String encode(IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnum data) =>
      data.value;

  /// Decodes a [dynamic value][data] to a IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'Allow':
          return IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnum.allow;
        case r'Forbid':
          return IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnum.forbid;
        case r'Replace':
          return IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnum.replace;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnumTypeTransformer] instance.
  static IoK8sApiBatchV1CronJobSpecConcurrencyPolicyEnumTypeTransformer?
      _instance;
}

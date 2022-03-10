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
import 'package:kubenav/models/kubernetes/io_k8s_api_core_v1_local_object_reference.dart';

class IoK8sApiCoreV1ISCSIVolumeSource {
  /// Returns a new [IoK8sApiCoreV1ISCSIVolumeSource] instance.
  IoK8sApiCoreV1ISCSIVolumeSource({
    this.chapAuthDiscovery,
    this.chapAuthSession,
    this.fsType,
    this.initiatorName,
    required this.iqn,
    this.iscsiInterface,
    required this.lun,
    this.portals = const [],
    this.readOnly,
    this.secretRef,
    required this.targetPortal,
  });

  /// whether support iSCSI Discovery CHAP authentication
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? chapAuthDiscovery;

  /// whether support iSCSI Session CHAP authentication
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? chapAuthSession;

  /// Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fsType;

  /// Custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? initiatorName;

  /// Target iSCSI Qualified Name.
  String iqn;

  /// iSCSI Interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iscsiInterface;

  /// iSCSI Target Lun number.
  int lun;

  /// iSCSI Target Portal List. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
  List<String> portals;

  /// ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? readOnly;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IoK8sApiCoreV1LocalObjectReference? secretRef;

  /// iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
  String targetPortal;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IoK8sApiCoreV1ISCSIVolumeSource &&
          other.chapAuthDiscovery == chapAuthDiscovery &&
          other.chapAuthSession == chapAuthSession &&
          other.fsType == fsType &&
          other.initiatorName == initiatorName &&
          other.iqn == iqn &&
          other.iscsiInterface == iscsiInterface &&
          other.lun == lun &&
          other.portals == portals &&
          other.readOnly == readOnly &&
          other.secretRef == secretRef &&
          other.targetPortal == targetPortal;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (chapAuthDiscovery == null ? 0 : chapAuthDiscovery!.hashCode) +
      (chapAuthSession == null ? 0 : chapAuthSession!.hashCode) +
      (fsType == null ? 0 : fsType!.hashCode) +
      (initiatorName == null ? 0 : initiatorName!.hashCode) +
      (iqn.hashCode) +
      (iscsiInterface == null ? 0 : iscsiInterface!.hashCode) +
      (lun.hashCode) +
      (portals.hashCode) +
      (readOnly == null ? 0 : readOnly!.hashCode) +
      (secretRef == null ? 0 : secretRef!.hashCode) +
      (targetPortal.hashCode);

  @override
  String toString() =>
      'IoK8sApiCoreV1ISCSIVolumeSource[chapAuthDiscovery=$chapAuthDiscovery, chapAuthSession=$chapAuthSession, fsType=$fsType, initiatorName=$initiatorName, iqn=$iqn, iscsiInterface=$iscsiInterface, lun=$lun, portals=$portals, readOnly=$readOnly, secretRef=$secretRef, targetPortal=$targetPortal]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (chapAuthDiscovery != null) {
      json[r'chapAuthDiscovery'] = chapAuthDiscovery;
    }
    if (chapAuthSession != null) {
      json[r'chapAuthSession'] = chapAuthSession;
    }
    if (fsType != null) {
      json[r'fsType'] = fsType;
    }
    if (initiatorName != null) {
      json[r'initiatorName'] = initiatorName;
    }
    json[r'iqn'] = iqn;
    if (iscsiInterface != null) {
      json[r'iscsiInterface'] = iscsiInterface;
    }
    json[r'lun'] = lun;
    json[r'portals'] = portals;
    if (readOnly != null) {
      json[r'readOnly'] = readOnly;
    }
    if (secretRef != null) {
      json[r'secretRef'] = secretRef;
    }
    json[r'targetPortal'] = targetPortal;
    return json;
  }

  /// Returns a new [IoK8sApiCoreV1ISCSIVolumeSource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiCoreV1ISCSIVolumeSource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IoK8sApiCoreV1ISCSIVolumeSource[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IoK8sApiCoreV1ISCSIVolumeSource[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiCoreV1ISCSIVolumeSource(
        chapAuthDiscovery: mapValueOfType<bool>(json, r'chapAuthDiscovery'),
        chapAuthSession: mapValueOfType<bool>(json, r'chapAuthSession'),
        fsType: mapValueOfType<String>(json, r'fsType'),
        initiatorName: mapValueOfType<String>(json, r'initiatorName'),
        iqn: mapValueOfType<String>(json, r'iqn')!,
        iscsiInterface: mapValueOfType<String>(json, r'iscsiInterface'),
        lun: mapValueOfType<int>(json, r'lun')!,
        portals: json[r'portals'] is List
            ? (json[r'portals'] as List).cast<String>()
            : const [],
        readOnly: mapValueOfType<bool>(json, r'readOnly'),
        secretRef:
            IoK8sApiCoreV1LocalObjectReference.fromJson(json[r'secretRef']),
        targetPortal: mapValueOfType<String>(json, r'targetPortal')!,
      );
    }
    return null;
  }

  static List<IoK8sApiCoreV1ISCSIVolumeSource>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IoK8sApiCoreV1ISCSIVolumeSource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiCoreV1ISCSIVolumeSource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiCoreV1ISCSIVolumeSource> mapFromJson(
      dynamic json) {
    final map = <String, IoK8sApiCoreV1ISCSIVolumeSource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiCoreV1ISCSIVolumeSource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiCoreV1ISCSIVolumeSource-objects as value to a dart map
  static Map<String, List<IoK8sApiCoreV1ISCSIVolumeSource>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<IoK8sApiCoreV1ISCSIVolumeSource>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiCoreV1ISCSIVolumeSource.listFromJson(
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
    'iqn',
    'lun',
    'targetPortal',
  };
}

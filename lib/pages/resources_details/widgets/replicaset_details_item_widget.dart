import 'package:flutter/material.dart';

import 'package:kubenav/models/resource_model.dart';
import 'package:kubenav/models/kubernetes/api.dart'
    show IoK8sApiAppsV1ReplicaSet;
import 'package:kubenav/pages/resources_details/widgets/details_item_widget.dart';
import 'package:kubenav/pages/resources_details/widgets/details_resources_preview_widget.dart';
import 'package:kubenav/utils/constants.dart';
import 'package:kubenav/utils/resources/general.dart';

class ReplicaSetDetailsItemWidget extends StatelessWidget
    implements IDetailsItemWidget {
  const ReplicaSetDetailsItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  final dynamic item;

  @override
  Widget build(BuildContext context) {
    final replicaSet = IoK8sApiAppsV1ReplicaSet.fromJson(item);

    if (replicaSet == null ||
        replicaSet.spec == null ||
        replicaSet.status == null) {
      return Container();
    }

    return Column(
      children: [
        DetailsItemWidget(
          title: 'Configuration',
          details: [
            DetailsItemModel(
              name: 'Replicas',
              values: replicaSet.spec!.replicas ?? '-',
            ),
            DetailsItemModel(
              name: 'Selector',
              values: replicaSet.spec!.selector.matchLabels.entries
                  .map((matchLabel) => '${matchLabel.key}=${matchLabel.value}')
                  .toList(),
            ),
          ],
        ),
        const SizedBox(height: Constants.spacingMiddle),
        DetailsItemWidget(
          title: 'Status',
          details: [
            DetailsItemModel(
              name: 'Desired Replicas',
              values: replicaSet.status!.replicas,
            ),
            DetailsItemModel(
              name: 'Ready Replicas',
              values: replicaSet.status!.readyReplicas ?? '-',
            ),
            DetailsItemModel(
              name: 'Available Replicas',
              values: replicaSet.status!.availableReplicas ?? '-',
            ),
            DetailsItemModel(
              name: 'Fully Labeled Replicas',
              values: replicaSet.status!.fullyLabeledReplicas ?? '-',
            ),
            DetailsItemModel(
              name: 'Observed Generation',
              values: replicaSet.status!.observedGeneration ?? '-',
            ),
          ],
        ),
        const SizedBox(height: Constants.spacingMiddle),
        DetailsResourcesPreviewWidget(
          title: Resources.map['pods']!.title,
          resource: Resources.map['pods']!.resource,
          path: Resources.map['pods']!.path,
          scope: Resources.map['pods']!.scope,
          namespace: replicaSet.metadata?.namespace,
          selector: getSelector(replicaSet.spec?.selector),
        ),
        const SizedBox(height: Constants.spacingMiddle),
        DetailsResourcesPreviewWidget(
          title: Resources.map['events']!.title,
          resource: Resources.map['events']!.resource,
          path: Resources.map['events']!.path,
          scope: Resources.map['events']!.scope,
          namespace: replicaSet.metadata?.namespace,
          selector:
              'fieldSelector=involvedObject.name=${replicaSet.metadata?.name ?? ''}',
        ),
      ],
    );
  }
}

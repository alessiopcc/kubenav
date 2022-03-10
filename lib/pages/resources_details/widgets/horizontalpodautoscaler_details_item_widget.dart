import 'package:flutter/material.dart';

import 'package:kubenav/models/kubernetes/io_k8s_api_autoscaling_v2beta1_horizontal_pod_autoscaler.dart';
import 'package:kubenav/models/resource_model.dart';
import 'package:kubenav/pages/resources_details/widgets/details_item_widget.dart';
import 'package:kubenav/pages/resources_details/widgets/details_resources_preview_widget.dart';
import 'package:kubenav/utils/constants.dart';
import 'package:kubenav/utils/resources/general.dart';

class HorizontalPodAutoscalerDetailsItemWidget extends StatelessWidget
    implements IDetailsItemWidget {
  const HorizontalPodAutoscalerDetailsItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  final dynamic item;

  List<Widget> buildReference(
      IoK8sApiAutoscalingV2beta1HorizontalPodAutoscaler hpa) {
    if (hpa.spec!.scaleTargetRef.kind != 'Deployment' &&
        hpa.spec!.scaleTargetRef.kind != 'StatefulSet') {
      return [Container()];
    }

    return [
      DetailsResourcesPreviewWidget(
        title: '${hpa.spec!.scaleTargetRef.kind}s',
        resource: '${hpa.spec!.scaleTargetRef.kind.toLowerCase()}s',
        path: '/apis/${hpa.spec!.scaleTargetRef.apiVersion}',
        scope: ResourceScope.namespaced,
        namespace: item['metadata']['namespace'],
        selector:
            'fieldSelector=metadata.name=${hpa.spec!.scaleTargetRef.name}',
      ),
      const SizedBox(height: Constants.spacingMiddle),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final hpa =
        IoK8sApiAutoscalingV2beta1HorizontalPodAutoscaler.fromJson(item);

    if (hpa == null || hpa.spec == null) {
      return Container();
    }

    return Column(
      children: [
        DetailsItemWidget(
          title: 'Configuration',
          details: [
            DetailsItemModel(
              name: 'Min. Replicas',
              values: hpa.spec!.minReplicas,
            ),
            DetailsItemModel(
              name: 'Max. Replicas',
              values: hpa.spec!.maxReplicas,
            ),
            DetailsItemModel(
              name: 'Reference',
              values:
                  '${hpa.spec!.scaleTargetRef.kind}/${hpa.spec!.scaleTargetRef.name}',
            ),
          ],
        ),
        const SizedBox(height: Constants.spacingMiddle),
        DetailsItemWidget(
          title: 'Status',
          details: [
            DetailsItemModel(
              name: 'Desired Replicas',
              values: hpa.status?.desiredReplicas ?? '-',
            ),
            DetailsItemModel(
              name: 'Current Replicas',
              values: hpa.status?.currentReplicas ?? '-',
            ),
            DetailsItemModel(
              name: 'Last Scale Time',
              values: formatTime(hpa.status?.lastScaleTime),
            ),
          ],
        ),
        const SizedBox(height: Constants.spacingMiddle),
        ...buildReference(hpa),
        DetailsResourcesPreviewWidget(
          title: Resources.map['events']!.title,
          resource: Resources.map['events']!.resource,
          path: Resources.map['events']!.path,
          scope: Resources.map['events']!.scope,
          namespace: item['metadata']['namespace'],
          selector:
              'fieldSelector=involvedObject.name=${item['metadata']['name']}',
        ),
      ],
    );
  }
}

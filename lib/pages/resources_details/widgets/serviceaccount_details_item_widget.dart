import 'dart:convert';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:kubenav/models/kubernetes/api.dart'
    show IoK8sApiCoreV1ServiceAccount;
import 'package:kubenav/models/resource_model.dart';
import 'package:kubenav/pages/resources_details/widgets/details_item_widget.dart';
import 'package:kubenav/pages/resources_details/widgets/details_resources_preview_widget.dart';
import 'package:kubenav/utils/constants.dart';
import 'package:kubenav/utils/helpers.dart';
import 'package:kubenav/widgets/app_bottom_sheet_widget.dart';
import 'package:kubenav/widgets/app_vertical_list_simple_widget.dart';

class ServiceAccountDetailsItemWidget extends StatelessWidget
    implements IDetailsItemWidget {
  const ServiceAccountDetailsItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  final dynamic item;

  @override
  Widget build(BuildContext context) {
    final sa = IoK8sApiCoreV1ServiceAccount.fromJson(item);

    if (sa == null) {
      return Container();
    }

    return Column(
      children: [
        AppVertialListSimpleWidget(
          title: 'Secrets',
          items: sa.secrets
              .map(
                (secret) => AppVertialListSimpleModel(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Constants.colorPrimary,
                        borderRadius: BorderRadius.all(
                          Radius.circular(Constants.sizeBorderRadius),
                        ),
                      ),
                      height: 54,
                      width: 54,
                      child: Image.asset(
                        'assets/resources/image42x42/secrets.png',
                      ),
                    ),
                    const SizedBox(width: Constants.spacingSmall),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            secret.name ?? '-',
                            style: primaryTextStyle(),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'Namespace: ${secret.namespace != null ? secret.namespace : sa.metadata?.namespace != null ? sa.metadata?.namespace : '-'}',
                            style: secondaryTextStyle(),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
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

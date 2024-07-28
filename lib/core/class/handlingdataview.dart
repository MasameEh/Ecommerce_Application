import 'package:ecommerce_app/core/class/status_request.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constant/image_asset.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest? statusRequest;
  final Widget widget;
  const HandlingDataView(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? const Center(
            child: CircularProgressIndicator(),)
        : statusRequest == StatusRequest.offlineFailure
            ? Center(
                child: Lottie.asset(AppImageAsset.offline,
                    width: 250, height: 250)) : widget;
  }
}

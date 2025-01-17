import 'package:flutter/material.dart';

import '../../core/constant/image_asset.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 70,
        child: ClipOval(
            child: Image.asset(
              AppImageAsset.logo,
            ),
          ),
        );
  }
}

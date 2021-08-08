import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdi/mdi.dart';
import 'package:url_launcher/url_launcher.dart';

class XBottomSheet extends StatelessWidget {
  const XBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Minel Benjamin 2021',
            style: Get.textTheme.subtitle2,
          ),
          if (context.width > 800)
            Text(
              'developWithFlutter'.tr,
              style: Get.textTheme.subtitle2,
            ),
          if (context.width > 635)
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'network'.tr + ' :',
                    style: Get.textTheme.subtitle2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Uri emailLaunchUri = Uri(
                        scheme: 'mailto',
                        path: 'benjamin.minel@outlook.fr',
                      );
                      launch(emailLaunchUri.toString());
                    },
                    child: Text(
                      'benjamin.minel@outlook.fr',
                      style: Get.textTheme.subtitle2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      launch(
                        'https://github.com/ectrema/portofolio',
                      );
                    },
                    child: Icon(Mdi.github),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      launch(
                        'https://www.linkedin.com/in/benjamin-minel-96435a181/',
                      );
                    },
                    child: Icon(Mdi.linkedin),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}

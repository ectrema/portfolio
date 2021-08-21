import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdi/mdi.dart';
import 'package:url_launcher/url_launcher.dart';

class ItemInkwellCarrousel extends StatelessWidget {
  final String pathPicture;
  final String textPresentation;
  final double? height;
  final String link;
  const ItemInkwellCarrousel(
    this.pathPicture,
    this.textPresentation,
    this.link, {
    this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Get.theme.accentColor,
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Image.asset(
              pathPicture,
              fit: BoxFit.contain,
              width: context.width * 0.2,
              height: height,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    textPresentation,
                    style: Get.textTheme.bodyText1!
                        .copyWith(color: Get.theme.backgroundColor),
                  ),
                ),
                InkWell(
                  onTap: () {
                    launch(
                      link,
                    );
                  },
                  child: Icon(
                    Mdi.github,
                    color: Get.theme.backgroundColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

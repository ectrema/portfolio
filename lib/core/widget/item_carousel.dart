import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemCarrousel extends StatelessWidget {
  final String pathPicture;
  final String textPresentation;
  final double? height;
  const ItemCarrousel(
    this.pathPicture,
    this.textPresentation, {
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
              fit: BoxFit.scaleDown,
              height: height,
              width: context.width * 0.2,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    textPresentation,
                    style: Get.textTheme.bodyText1!
                        .copyWith(color: Get.theme.backgroundColor),
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

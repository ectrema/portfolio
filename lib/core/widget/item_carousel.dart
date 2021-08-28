import 'package:flutter/material.dart';

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
      color: Theme.of(context).accentColor,
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Image.asset(
              pathPicture,
              fit: BoxFit.scaleDown,
              height: height,
              width: 200,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    textPresentation,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Theme.of(context).backgroundColor,
                        ),
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

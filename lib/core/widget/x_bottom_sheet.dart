import 'package:flutter/material.dart';

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
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(
            'developWithFlutter',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ],
      ),
    );
  }
}

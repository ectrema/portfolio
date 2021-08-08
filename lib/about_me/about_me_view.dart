import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/core/widget/x_scaffold.dart';

import 'about_me_view_controller.dart';

class AboutMeView extends GetView<AboutMeViewController> {
  @override
  Widget build(BuildContext context) {
    return XScaffold(
      child: Center(),
      indexNavigation: 1,
    );
  }
}

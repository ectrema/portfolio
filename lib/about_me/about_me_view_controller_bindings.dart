import 'package:get/get.dart';

import 'about_me_view_controller.dart';

class AboutMeViewControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AboutMeViewController>(
      () => AboutMeViewController(),
    );
  }
}

import 'package:get/get.dart';
import 'package:portofolio/home/home_view_controller.dart';

class HomeViewControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeViewController>(
      () => HomeViewController(),
    );
  }
}

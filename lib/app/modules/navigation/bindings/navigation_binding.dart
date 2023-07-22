import 'package:ads_frontend_test/app/modules/home/controllers/home_controller.dart';
import 'package:ads_frontend_test/app/modules/likes/controllers/likes_controller.dart';
import 'package:ads_frontend_test/app/modules/notifications/controllers/notifications_controller.dart';
import 'package:ads_frontend_test/app/modules/profile/controllers/profile_controller.dart';
import 'package:get/get.dart';

import '../controllers/navigation_controller.dart';

class NavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigationController>(
      () => NavigationController(),
    );
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.lazyPut<LikesController>(() => LikesController(), fenix: true);
    Get.lazyPut<NotificationsController>(() => NotificationsController(),
        fenix: true);
    Get.lazyPut<ProfileController>(() => ProfileController(), fenix: true);
  }
}

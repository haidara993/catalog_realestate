import 'package:catalog_realestate/controllers/auth_viewmodel.dart';
import 'package:catalog_realestate/controllers/control_viewmodel.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AuthViewModel());
    Get.lazyPut(() => ControlViewModel());
  }
}

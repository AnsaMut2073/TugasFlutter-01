import 'package:get/get.dart';

class ConfirmregController extends GetxController {
  late String name;
  late String email;
  late String wa_number;
  late String address;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments;
    name = arguments['name'];
    email = arguments['email'];
    wa_number = arguments['wa_number'];
    address = arguments['address'];
  }
}
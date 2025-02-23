import 'package:get/get.dart';

class PasswordController extends GetxController {
  final RxBool _password = false.obs;

  bool get password => _password.value;

  set setPassword(bool newState) {
    _password.value = newState;
  }
}

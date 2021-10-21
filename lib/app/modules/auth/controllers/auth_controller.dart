import 'package:get/get.dart';
import 'package:sample_project/app/routes/app_pages.dart';
import 'package:sample_project/controllers/controllers.dart';

class AuthController extends GetxController {
  Rxn<String> errorMessage = Rxn<String>(null);
  var isAuthProgress = false.obs;

  Rxn<AuthToken> get token => ApiController.to.token;

  Future<void> auth(
      {required String email,
      required String password,
      required bool register}) async {
    errorMessage.value = null;
    isAuthProgress.value = true;

    try {
      if (register) {
        await ApiController.to.register(email, password);
        await ApiController.to.login(email, password);
      } else {
        await ApiController.to.login(email, password);
      }
      Get.offNamed(Routes.HOME);
    } catch (e) {
      errorMessage.value = 'Unable to Login';
    }
    isAuthProgress.value = false;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}

import 'package:get/get.dart';
import 'package:pricing_plan_app/app/modules/splash/controllers/splash_controller.dart';

class AuthController extends GetxController {
  // Simpan tipe pengguna saat ini sebagai Rx agar reaktif
  final Rx<UserType> _currentUserType = UserType.enterprise.obs; // Default ke FREE

  UserType get userType => _currentUserType.value;

  // Metode untuk simulasi login dan pengaturan role
  void setUserType(UserType newType) {
    _currentUserType.value = newType;
    // Di aplikasi nyata, ini akan dipanggil setelah login/fetch data user
  }

  // Cek apakah pengguna memiliki akses minimum ke Premium
  bool get isPremiumOrHigher =>
      userType == UserType.freemium || userType == UserType.enterprise;

  // Cek apakah pengguna memiliki akses minimum ke Enterprise
  bool get isEnterprise => userType == UserType.enterprise;

  // Cek apakah pengguna Free
  bool get isFree => userType == UserType.free;
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pricing_plan_app/app/core/controller/auth_controller.dart';
import 'package:pricing_plan_app/app/modules/splash/controllers/splash_controller.dart';

class SubscriptionMiddleware extends GetMiddleware {
  // Priority: Semakin kecil nilainya, semakin tinggi prioritasnya
  @override
  int? priority = 1;

  // Daftar role yang DIIZINKAN untuk mengakses rute ini
  final List<UserType> allowedRoles;

  SubscriptionMiddleware({required this.allowedRoles});

  // Ambil instance AuthController yang sudah di-init
  final AuthController _authController = Get.find<AuthController>();

  // Fungsi REDIRECT adalah inti dari Middleware.
  // Dipanggil sebelum membangun halaman.
  @override
  RouteSettings? redirect(String? route) {
    // Cek apakah tipe pengguna saat ini ada di daftar allowedRoles
    if (!allowedRoles.contains(_authController.userType)) {
      // Jika TIDAK diizinkan, alihkan (redirect)

      // Misalnya, alihkan ke halaman 'Access Denied' atau 'Upgrade Subscription'
      // Ganti '/access-denied' dengan rute yang sesuai di aplikasi Anda
      return const RouteSettings(name: '/access-denied');
    }
    // Jika diizinkan (role ada di allowedRoles), kembalikan null untuk melanjutkan ke rute tujuan
    return null;
  }
}
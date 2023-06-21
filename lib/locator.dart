import 'package:get_it/get_it.dart';
import 'package:mobil_app/services/auth_services.dart';
import 'package:mobil_app/services/provider/auth_provider.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<AuthProvider>(AuthProvider());
  locator.registerSingleton<AuthService>(AuthService());
}
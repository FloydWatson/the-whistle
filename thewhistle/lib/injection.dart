

import 'package:get_it/get_it.dart';
import 'package:thewhistle/view/styling/style.dart';
import 'package:thewhistle/view/styling/style_impl.dart';

class Injection {
  static Future init() async {
    final services = GetIt.I;

    // Styling
         services.registerSingleton<AppStyle>(AppStyleImpl());
         services.registerLazySingleton<MainTheme>(() => services<AppStyle>());
  }
}
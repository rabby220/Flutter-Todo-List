import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapp/app/themes/app_theme.dart';
import 'app/routes/app_pages.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('TodoBox');
  runApp(
    ValueListenableBuilder(
      valueListenable: Hive.box('TodoBox').listenable(),
      builder: (_, box, child) {
        final isDark = box.get('isDark', defaultValue: false);
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          theme: isDark ? AppTheme.darkThemeData : AppTheme.lightThemeData,
        );
      },
    ),
  );
}

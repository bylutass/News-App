//import 'package:news_app/res/consts/colors.dart';
//import 'package:news_app/res/consts/colors.dart';
import 'package:news_app/res/consts/consts.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:news_app/res/routes/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: AppColors.icon,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        fontFamily: AppFonts.regular,
        scaffoldBackgroundColor: AppColors.background,
        iconTheme: const IconThemeData(
          color: AppColors.icon,
        ),
      ),
      getPages: AppRoutes.getRoutes(),
    );
  }
}

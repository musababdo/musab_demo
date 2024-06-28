
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:musab_demo/constants.dart';
import 'package:musab_demo/local/local.dart';
import 'package:musab_demo/local/local_controller.dart';
import 'package:musab_demo/provider/cartItem.dart';
import 'package:musab_demo/screens/home.dart';
import 'package:musab_demo/screens/login.dart';
import 'package:provider/provider.dart';

void main() async{
  //WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MyLocalController c = Get.put(MyLocalController());
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CartItem>(
          create: (context) => CartItem(),
        ),
      ],
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          locale:c.intiallang,
          translations: MyLocal(),
          home: Login(),
      ),
    );
  }
}

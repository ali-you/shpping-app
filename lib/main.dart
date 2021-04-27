import 'package:flutter/material.dart';
import 'package:flutter_app1/HivePrac/HiveLoginScreen.dart';
import 'package:flutter_app1/HivePrac/MainScreen.dart';
import 'package:flutter_app1/HivePrac/Product.dart';
import 'package:flutter_app1/HivePrac/ProductCache.dart';
import 'package:flutter_app1/HivePrac/User.dart';
import 'package:flutter_app1/homePage.dart';
import 'package:flutter_app1/shoppingAppPages/mainPage.dart';
import 'package:flutter_app1/whatsAppPages/chats.dart';
import 'package:flutter_app1/whatsAppPages/splashScreen.dart';
import 'package:flutter_app1/whatsapp_page.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hive/hive.dart';

/**
 * instagram, google chrome (first page and search page) ui
 */

// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//
//
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "myApplication",
//       theme: ThemeData(
//         scaffoldBackgroundColor: Colors.white,
//         backgroundColor: Colors.white,
//           primaryColor: Colors.black,
//           primaryIconTheme: IconThemeData(color: Colors.black54),
//           primaryTextTheme: TextTheme(headline6: TextStyle(color: Colors.black54))
//       ),
//       home: HomePages(),
//     );
//   }
// }

/**
 * WhatsApp ui
 */

// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primaryColor: Color(0xFF075E54),
//         accentColor: Color(0xff25d366)
//       ),
//       debugShowCheckedModeBanner: false,
//       title: "WhatsApp",
//       initialRoute: "/splash_screen",
//       routes: {
//         "/whatsApp_page": (context) => WhatsAppPage(),
//         "/login_screen": (context) => LoginScreen(),
//         "/splash_screen": (context) => SplashScreen(),
//         "/new_chat": (context) => Chats()
//       },
//       home: WhatsAppPage(),
//     );
//   }
// }

/**
 * shopping app
 */

// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MainPage(),
//     );
//   }
// }

/**
 * Hive
 */

// void main() async{
//
//
//   await Hive.initFlutter();
//   await Hive.openBox('Student');
//   @HiveType(typeId: typeId, )
//   runApp(MyApp());
//
//
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: ValueListenableBuilder(
//           valueListenable: Hive.box("Student").listenable(),
//           builder: (context, box, widget){
//             return Center(
//               child: Switch(
//                 value: box.get('darkMode', defaultValue: false),
//                 onChanged: (val) {
//                   box.put('darkMode', val);
//                 },
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

/**
 * Hive prac
 */

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(ProductAdapter());
  Hive.registerAdapter(ProductCacheAdapter());
  await Hive.openBox("users");
  await Hive.openBox("products");
  await Hive.openBox("cacheList");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Hive.box("users").isEmpty ? HiveLoginScreen() : MainScreen(),
    );
  }
}

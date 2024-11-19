import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:luxury_glow/screens/login.dart';
import 'package:luxury_glow/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Wowla Shop',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSwatch(
//           primarySwatch: Colors.blue,
//         ).copyWith(secondary: const Color.fromARGB(255, 68, 70, 187)),
//         useMaterial3: true,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Luxury Glow',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.pink,
          ).copyWith(secondary: const Color.fromARGB(255, 190, 101, 164)),
        ),
        home: const LoginPage(),
      ),
    );
  }
}
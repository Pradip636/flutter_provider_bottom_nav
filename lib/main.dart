import 'package:flutter/material.dart';
import 'package:flutter_provider_bottom_nav/provider/nav_provider.dart';
import 'package:flutter_provider_bottom_nav/screen/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => NavProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          appBarTheme: const AppBarTheme(color: Color.fromRGBO(80, 83, 85, 1),titleTextStyle: TextStyle(color: Colors.white,fontSize: 22)),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: Color.fromRGBO(80, 83, 85, 1),
              unselectedItemColor: Colors.white54,
              selectedItemColor: Colors.white)),
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(),
      },
    );
  }
}

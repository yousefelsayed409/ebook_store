import 'package:ebook/app/notifiers/app_notifier.dart';
import 'package:ebook/presentation/screens/main_screen.dart';
import 'package:ebook/presentation/screens/main_screen.dart';
import 'package:ebook/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppNotifier()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(textTheme: textTheme),
        home:  SplashScreen(),
      ),
    );
  }
}

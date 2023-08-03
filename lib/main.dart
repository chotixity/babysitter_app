import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './Screens/profiles_screen.dart';
import './Screens/bottombar.dart';
import './Screens/full_reviews.dart';
import './providers/babysitter_provider.dart';

void main() => runApp(const myApp());

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => babySitters(),
        ),
        //ChangeNotifierProvider(create: (context) => Babys)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Baby Sitters',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.deepPurple,
            accentColor: Colors.white,
          ).copyWith(secondary: Colors.purple),
          textTheme: const TextTheme(
            bodyLarge: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        home: const BottomBar(),
        routes: {
          ProfilesPage.routeName: (context) => ProfilesPage(),
          ReviewScreen.routeName: (context) => const ReviewScreen(),
        },
      ),
    );
  }
}

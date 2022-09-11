import 'package:babysitter_app/babysitter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './Screens/profiles_screen.dart';
import './Screens/bottombar.dart';
import './Screens/full_reviews.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => babySitters(),
        )
      ],
      child: MaterialApp(
        title: 'Baby Sitters',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.deepPurple,
            accentColor: const Color.fromARGB(255, 239, 238, 238),
          ).copyWith(secondary: Colors.purple),
          textTheme: const TextTheme(
            bodyText1: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        home: BottomBar(),
        routes: {
          ProfilesPage.routeName: (context) => ProfilesPage(),
          ReviewScreen.routeName: (context) => ReviewScreen(),
        },
      ),
    );
  }
}

import 'package:babysitter_app/Screens/full_reviews.dart';
import 'package:flutter/material.dart';

import './Screens/profiles_screen.dart';
import './Screens/bottombar.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baby Sitters',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
          accentColor: Color.fromARGB(255, 239, 238, 238),
        ),
      ),
      home: BottomBar(),
      routes: {
        ProfilesPage.routeName: (context) => ProfilesPage(),
        ReviewScreen.routeName: (context) => ReviewScreen(),
      },
    );
  }
}

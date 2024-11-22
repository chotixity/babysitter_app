import 'package:babysitter_app/state/babysitters_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './Screens/bottombar.dart';
import './Screens/full_reviews.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => BabysittersBloc(),
        ),
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
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll<Color>(
                    Theme.of(context).colorScheme.primary),
                foregroundColor:
                    const WidgetStatePropertyAll<Color>(Colors.white)),
          ),
        ),
        home: const BottomBar(),
        routes: {
          //ProfilesPage.routeName: (context) => ProfilesPage(),
          ReviewScreen.routeName: (context) => const ReviewScreen(),
        },
      ),
    );
  }
}

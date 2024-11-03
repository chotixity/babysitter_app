import 'package:flutter/material.dart';

import '../widgets/babysitter_item.dart';

class HomepageScreen extends StatelessWidget {
  static const routeName = '/Homepage';

  const HomepageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: BabySitterItem(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../widgets/babysitter_item.dart';

class HomepageScreen extends StatelessWidget {
  static const routeName = '/Homepage';

  const HomepageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BabySitter App"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            BabySitterItem(),
          ],
        ),
      ),
    );
  }
}

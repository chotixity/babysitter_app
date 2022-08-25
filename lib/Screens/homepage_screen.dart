import 'package:flutter/material.dart';

import '../widgets/babysitter_item.dart';
import '../models/data.dart';

class HomepageScreen extends StatelessWidget {
  static const routeName = '/Homepage';

  HomepageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(
            'BabySitters',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .75,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                    child: BabySitterItem(
                  color: Colors.transparent,
                  imageUrl: babysitter[index].imageUrl[0],
                  id: babysitter[index].id,
                  name:
                      '${babysitter[index].firstName}  ${babysitter[index].lastName}',
                  rating: babysitter[index].rating,
                ));
              },
              itemCount: babysitter.length,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:babysitter_app/providers/babysitter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/babysitter_item.dart';

class HomepageScreen extends StatelessWidget {
  static const routeName = '/Homepage';

  HomepageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final babysitterList = Provider.of<babySitters>(context);

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
                  imageUrl: babysitterList.babysitter[index].imageUrl[0],
                  id: babysitterList.babysitter[index].id,
                  name:
                      '${babysitterList.babysitter[index].firstName}  ${babysitterList.babysitter[index].lastName}',
                  rating: babysitterList.babysitter[index].rating,
                ));
              },
              itemCount: babysitterList.babysitter.length,
            ),
          ),
        ],
      ),
    );
  }
}

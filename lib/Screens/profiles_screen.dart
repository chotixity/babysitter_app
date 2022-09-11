import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../models/data.dart';
import '../Screens/full_reviews.dart';
import '../babysitter_provider.dart';

class ProfilesPage extends StatelessWidget {
  static const routeName = '/profiles';

  late String id;

  ProfilesPage();
  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context);
    final theme = Theme.of(context);
    final babysitters = Provider.of<babySitters>(context);
    final babysitterId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedBabySitter = babysitters.babysitter
        .firstWhere((babysitter) => babysitterId == babysitter.id);

    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              bottom: 20,
            ),
            child: SizedBox(
              height: mediaquery.size.height * .35,
              child: Image.asset(
                width: mediaquery.size.width * 0.9,
                selectedBabySitter.imageUrl[1],
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
              ),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: -70,
                  left: 50,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Image.asset(
                      selectedBabySitter.imageUrl[0],
                      fit: BoxFit.cover,
                      width: 50,
                    ),
                  ),
                ),
                Positioned(
                  right: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:babysitter_app/providers/babysitter.dart';
import 'package:provider/provider.dart';

import '../Screens/profiles_screen.dart';
import 'package:flutter/material.dart';

class BabySitterItem extends StatelessWidget {
  //final String name;
  //final String rating;
  //final String id;
  //final Color color;
  //final String imageUrl;

  const BabySitterItem({
    super.key,
    //required this.name,
    //required this.id,
    // required this.rating,
    // required this.imageUrl,
    //required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final babySitter = Provider.of<BabySitter>(context);
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 235, 252, 1),
      ),
      padding: const EdgeInsets.only(left: 30),
      height: MediaQuery.of(context).size.height * .25,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${babySitter.firstName} ${babySitter.lastName}',
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text(babySitter.rating),
                      ],
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          30,
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      ProfilesPage.routeName,
                      arguments: babySitter.id,
                    );
                  },
                  child: const Text('View Profile'),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Image.asset(
              babySitter.imageUrl[0],
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}

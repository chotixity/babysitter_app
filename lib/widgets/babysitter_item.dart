import '../Screens/profiles_screen.dart';
import 'package:flutter/material.dart';

class BabySitterItem extends StatelessWidget {
  final String name;
  final String rating;
  final String id;
  final Color color;
  final String imageUrl;

  const BabySitterItem({
    required this.name,
    required this.id,
    required this.rating,
    required this.imageUrl,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
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
                      name,
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
                        Text(rating),
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
                      arguments: id,
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
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

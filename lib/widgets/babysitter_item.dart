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
      height: MediaQuery.of(context).size.height * 1 / 3,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: ListTile(
          title: Text(
            name,
            style: const TextStyle(
              color: Colors.deepPurple,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: <Widget>[
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(rating),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ElevatedButton(
                  // style: ,
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(ProfilesPage.routeName, arguments: id);
                  },
                  child: const Text('View Profile'),
                ),
              ),
            ],
          ),
          trailing: FractionallySizedBox(
            widthFactor: .4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.network(
                imageUrl,
                height: MediaQuery.of(context).size.height * 1 / 3,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

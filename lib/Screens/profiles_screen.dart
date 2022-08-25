import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../models/data.dart';
import '../Screens/full_reviews.dart';
import '../providers/babysitter_provider.dart';

class ProfilesPage extends StatelessWidget {
  static const routeName = '/profiles';

  final String id;

  ProfilesPage(this.id);
  @override
  Widget build(BuildContext context) {
    final babysitters = Provider.of<babySitters>(context);
    final babysitterId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedBabySitter = babysitters.babysitter
        .firstWhere((babysitter) => babysitterId == babysitter.id);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.8,
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * .30,
                child: Image.network(
                  width: MediaQuery.of(context).size.width * 0.9,
                  selectedBabySitter.imageUrl[1],
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: Image.network(selectedBabySitter.imageUrl[0]),
                title: Text(
                  '${selectedBabySitter.firstName}  ${selectedBabySitter.lastName}',
                ),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(selectedBabySitter.rating),
                        const SizedBox(width: 10),
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'reviews(${selectedBabySitter.reviews.length})',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'DESCRIPTION',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                  Text(selectedBabySitter.description),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'REVIEWS',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(ReviewScreen.routeName, arguments: id);
                        },
                        child: const Text('View All'),
                      ),
                    ],
                  ),
                  Container(
                    height: 150,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            child: Image.network(
                                selectedBabySitter.imageUrl[index][0]),
                          ),
                          title: Text(
                            selectedBabySitter.reviews[index]['User'] as String,
                          ),
                          subtitle: Text(
                            selectedBabySitter.reviews[index]['Review']
                                as String,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        );
                      },
                      itemCount: 2,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      //floatingActionButton: FloatingActionButton(onPressed: ,child: ,),
    );
  }
}

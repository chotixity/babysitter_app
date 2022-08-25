import 'package:flutter/material.dart';

import '../models/data.dart';

class ReviewScreen extends StatelessWidget {
  static const routeName = '/fullReviews';

  const ReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final babysitterId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedBabySitter =
        babysitter.firstWhere((babysitter) => babysitterId == babysitter.id);

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text('REVIEWS'),
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Image.network(selectedBabySitter.imageUrl[index][0]),
              ),
              title: Text(
                selectedBabySitter.reviews[index]['User'] as String,
              ),
              subtitle: Text(
                selectedBabySitter.reviews[index]['Review'] as String,
              ),
            );
          },
          itemCount: selectedBabySitter.reviews.length,
        ),
      ),
    );
  }
}

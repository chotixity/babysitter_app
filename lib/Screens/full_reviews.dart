import 'package:babysitter_app/providers/babysitter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReviewScreen extends StatelessWidget {
  static const routeName = '/fullReviews';

  const ReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final babysitterId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedBabySitter =
        Provider.of<babySitters>(context).findById(babysitterId);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text('REVIEWS'),
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(100),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Image.asset(
                  selectedBabySitter.reviews[index]['image'] as String,
                ),
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

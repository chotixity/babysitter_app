import 'package:flutter/material.dart';

class NewBabySitter extends StatefulWidget {
  const NewBabySitter({Key? key}) : super(key: key);

  @override
  State<NewBabySitter> createState() => _NewBabySitterState();
}

class _NewBabySitterState extends State<NewBabySitter> {
  final firstName = TextEditingController();
  final gender = TextEditingController();
  final location = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
          bottom: MediaQuery.of(context).viewInsets.bottom + 10,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(
                  label: Text('First Name'),
                ),
                controller: firstName,
              ),
              TextField(
                decoration: const InputDecoration(
                  label: Text('LastName'),
                ),
                controller: gender,
              ),
              TextField(
                decoration: const InputDecoration(
                  label: Text('Location'),
                ),
                controller: location,
              )
            ],
          ),
        ),
      ),
    );
  }
}

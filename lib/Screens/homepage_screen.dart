import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../widgets/babysitter_item.dart';
import '../babysitter_provider.dart';

class HomepageScreen extends StatelessWidget {
  static const routeName = '/Homepage';

  HomepageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final babysitterList = Provider.of<babySitters>(context);

    return Scaffold(
      backgroundColor: const Color.fromRGBO(96, 67, 245, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 30,
              color: Colors.white,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GradientText(
                  'BabySitters',
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                  gradientType: GradientType.linear,
                  colors: const [
                    Color.fromRGBO(96, 67, 245, 1),
                    Color.fromRGBO(131, 110, 241, 1),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .7785,
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
          ),
        ],
      ),
    );
  }
}

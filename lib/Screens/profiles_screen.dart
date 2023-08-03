import 'package:babysitter_app/Screens/full_reviews.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../providers/babysitter.dart';
import '../providers/babysitter_provider.dart';

class ProfilesPage extends StatelessWidget {
  static const routeName = '/profiles';

  late String id;

  ProfilesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context);
    final theme = Theme.of(context);
    List<Color> colors = const [
      Color.fromRGBO(96, 67, 245, 1),
      Color.fromRGBO(131, 110, 241, 1),
    ];
    final babysitters = Provider.of<babySitters>(context);
    final babysitterId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedBabySitter = babysitters.findById(babysitterId);

    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                width: mediaquery.size.width * 1,
                selectedBabySitter.imageUrl[1],
                fit: BoxFit.cover,
              ),
              Positioned(
                top: mediaquery.size.height * .08,
                left: mediaquery.size.width * .01,
                child: RawMaterialButton(
                  elevation: 12,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: mediaquery.size.height * .28,
                left: 20,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  child: Image.asset(
                    height: 100,
                    selectedBabySitter.imageUrl[0],
                  ),
                ),
              ),
              Positioned(
                left: mediaquery.size.width * .35,
                bottom: -80,
                child: SizedBox(
                  height: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GradientText(
                        '${selectedBabySitter.firstName} ${selectedBabySitter.lastName}',
                        style: const TextStyle(fontSize: 18),
                        colors: colors,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text(
                            '${selectedBabySitter.rating} reviews(${selectedBabySitter.reviews.length})',
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      Text(
                        selectedBabySitter.location,
                        style: const TextStyle(
                          fontSize: 18,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 20,
                bottom: -20,
                child: RawMaterialButton(
                  elevation: 12,
                  onPressed: () {
                    selectedBabySitter.togglefavorite();
                  },
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(8),
                  shape: const CircleBorder(),
                  child: ChangeNotifierProvider(
                    create: (context) => selectedBabySitter,
                    builder: (context, child) => Consumer<BabySitter>(
                      builder: (context, value, child) =>
                          selectedBabySitter.isFavorite
                              ? const Icon(
                                  Icons.favorite_rounded,
                                  size: 30,
                                  color: Colors.red,
                                )
                              : const Icon(
                                  Icons.favorite_outline,
                                  size: 30,
                                ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: GradientText(
                    'DESCRIPTION',
                    colors: colors,
                  ),
                ),
                Text(selectedBabySitter.description),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GradientText('REVIEWS', colors: colors),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, ReviewScreen.routeName,
                            arguments: selectedBabySitter.id);
                      },
                      child: const Text('View All'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 150,
                  child: Flexible(
                    child: ListView.builder(
                      itemCount: selectedBabySitter.reviews.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Image.asset(selectedBabySitter.reviews[index]
                              ['image'] as String),
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
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStatePropertyAll<Size>(
                      Size(mediaquery.size.width * .8, 50),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Check Availability'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

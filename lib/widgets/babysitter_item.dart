import 'package:babysitter_app/models/babysitter.dart';
import 'package:babysitter_app/widgets/profile_image.dart';

import 'package:flutter/material.dart';

class BabySitterItem extends StatelessWidget {
  final BabySitter babySitter;
  const BabySitterItem({
    required this.babySitter,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .5,
                  child: ListTile(
                    title: Text(
                      '${babySitter.firstName} ${babySitter.lastName}',
                      style: theme.textTheme.titleLarge!
                          .copyWith(color: theme.colorScheme.primary),
                    ),
                    subtitle: const Text("🌟 4.8"),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {}, child: const Text("View profile"))
              ],
            ),
            ProfileImage(
              imageUrl: babySitter.imageUrl[0],
            ),
          ],
        ),
      ),
    );
  }
}

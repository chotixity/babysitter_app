import 'package:babysitter_app/widgets/profile_image.dart';

import 'package:flutter/material.dart';

class BabySitterItem extends StatelessWidget {
  const BabySitterItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: MediaQuery.sizeOf(context).width * .35,
      child: const ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: ProfileImage(
          imageUrl: "assets/images/image13.png",
        ),
      ),
    );
  }
}

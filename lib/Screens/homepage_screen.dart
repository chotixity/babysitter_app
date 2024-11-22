import 'package:babysitter_app/state/babysitters_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/babysitter_item.dart';

class HomepageScreen extends StatefulWidget {
  static const routeName = '/Homepage';

  const HomepageScreen({Key? key}) : super(key: key);

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<BabysittersBloc>().getBabySittersList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BabySitter App"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: BlocBuilder<BabysittersBloc, BabysittersState>(
              builder: (BuildContext context, BabysittersState state) {
            return state.maybeWhen(
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (babysitters) => ListView.builder(
                itemCount: babysitters.length,
                itemBuilder: (context, index) {
                  return BabySitterItem(
                    babySitter: babysitters[index],
                  );
                },
              ),
              error: (message) => const Center(
                child: Text("An Error occured fetching babysitters"),
              ),
              orElse: () => const Center(
                child: Text("There are no babysitters currently"),
              ),
            );
          })),
    );
  }
}

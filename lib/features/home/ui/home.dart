import 'package:flutter/material.dart';
import 'package:flutter_application_7/features/home/bloc/home_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeBloc homeBloc = HomeBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      // buildWhen: (previous, current) => ,
      // listenWhen: (previous, current) => ,
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Products'),
            actions: [
              IconButton(
                  onPressed: () {
                    homeBloc.add(HomeProductWishlistNavigateEvent());
                  },
                  icon: const Icon(Icons.favorite_border_outlined)),
              IconButton(
                  onPressed: () {
                    homeBloc.add(HomeProductCartNavigateEvent());
                  },
                  icon: const Icon(Icons.shopping_bag_outlined))
            ],
          ),
        );
      },
    );
  }
}

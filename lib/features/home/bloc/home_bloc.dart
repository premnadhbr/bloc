import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/physics.dart';
import 'package:flutter_application_7/data/products_data.dart';
import 'package:flutter_application_7/features/home/models/model.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitailFetchEvent>(homeInitailFetchEvent);
    on<HomeProductWishlistNavigateEvent>(homeProductWishlistNavigateEvent);
    on<HomeProductCartNavigateEvent>(homeProductCartNavigateEvent);
  }

  FutureOr<void> homeInitailFetchEvent(
      HomeInitailFetchEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    await Future.delayed(const Duration(seconds: 3));
    emit(HomeLoadedSuccessState(
        products: ProductsData.productsData
            .map((e) => ProductDataModel(
                id: e['id'],
                name: e['name'],
                description: e['description'],
                imageUrl: e['imageUrl']))
            .toList()));
  }

  FutureOr<void> homeProductWishlistNavigateEvent(
      HomeProductWishlistNavigateEvent event, Emitter<HomeState> emit) {
    print("WIshlistnavigated");
    emit(HomeNavigateTOWishlistPageActionState());
  }

  FutureOr<void> homeProductCartNavigateEvent(
      HomeProductCartNavigateEvent event, Emitter<HomeState> emit) {
    print("CartNavigated");
    emit(HomeNavigateToCartPageActionState());
  }
}

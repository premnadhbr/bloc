import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/physics.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeProductWishlistNavigateEvent>(homeProductWishlistNavigateEvent);
    on<HomeProductCartNavigateEvent>(homeProductCartNavigateEvent);
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

part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeProductWishListButtonClickedEvent extends HomeEvent{}

class HomeProductCartButtonClickedEvent extends HomeEvent{}

class HomeProductCartNavigateEvent extends HomeEvent{}

class HomeProductWishlistNavigateEvent extends HomeEvent{}


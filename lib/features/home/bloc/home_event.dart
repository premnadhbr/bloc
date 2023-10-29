part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}
// this event shows everything in the ui
class HomeInitailFetchEvent extends HomeEvent{}

class HomeProductWishListButtonClickedEvent extends HomeEvent{}

class HomeProductCartButtonClickedEvent extends HomeEvent{}

class HomeProductCartNavigateEvent extends HomeEvent{}

class HomeProductWishlistNavigateEvent extends HomeEvent{}


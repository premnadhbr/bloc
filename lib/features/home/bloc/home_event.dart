// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

// this event shows everything in the ui
class HomeInitailFetchEvent extends HomeEvent {}

class HomeProductWishListButtonClickedEvent extends HomeEvent {
  final ProductDataModel productDataModel;
  HomeProductWishListButtonClickedEvent({
    required this.productDataModel,
  });
}

class HomeProductCartButtonClickedEvent extends HomeEvent {
  final ProductDataModel productDataModel;
  HomeProductCartButtonClickedEvent({
    required this.productDataModel,
  });
}

class HomeProductCartNavigateEvent extends HomeEvent {}

class HomeProductWishlistNavigateEvent extends HomeEvent {}

class HomeProductItemWishListedActionState extends HomeActionState {}

class HomeProductItemCartedActionState extends HomeActionState {}

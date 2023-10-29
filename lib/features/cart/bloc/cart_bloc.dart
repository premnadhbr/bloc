import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_application_7/data/cart_items.dart';
import 'package:flutter_application_7/features/home/models/model.dart';
import 'package:meta/meta.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialEvent>(cartInitialEvent);
  }

  FutureOr<void> cartInitialEvent(
      CartInitialEvent event, Emitter<CartState> emit) {
    emit(CartSuccessState(cartItems: cartitems));
  }
}

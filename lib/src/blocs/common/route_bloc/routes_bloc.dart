import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:whpro/src/config/routes/routes.dart';

part 'routes_event.dart';

part 'routes_state.dart';

class RoutesBloc extends Bloc<RoutesEvent, RoutesState> {
  RoutesBloc() : super(RoutesInitial()) {
User? user;
    on<RoutesEvent>((event, emit) async {
      try {
       user=  await FirebaseAuth.instance.currentUser;
        // emit(RoutesInitial());

        emit(RoutesWithOutUser(user!));

        emit(RoutesWithUser());


      } on Error {
        emit(RoutesError());
      }
    });
  }
}

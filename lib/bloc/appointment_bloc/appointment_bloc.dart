import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:habbiton_doctors_app/utils/api_manager.dart';
import 'package:meta/meta.dart';

part 'appointment_event.dart';

part 'appointment_state.dart';

class AppointmentBloc extends Bloc<AppointmentEvent, AppointmentState> {
  AppointmentBloc() : super(AppointmentInitial()) {
    on<AppointmentLoading>((event, emit) async {
      try {
        var response =
            await APIManager().get("appointment/get-appointments", "");

        if(response!=null){
          emit(AppointmentSuccess());
        }else{
          emit(AppointmentFailed(error:""));
        }
      } catch (e) {

        emit(AppointmentFailed(error: e.toString()));
      }
    });
  }
}

class CreateAppointmentBloc
    extends Bloc<AppointmentEvent, CreateAppointmentState> {
  CreateAppointmentBloc() : super(CreateAppointmentInitial()) {
    on<CreatingAppointmentLoading>((event, emit) async {
      try {
        var response = await APIManager()
            .post("appointment/create-appointments", event.data);

        if (response != null) {
          emit(CreateAppointmentSuccess());
        } else {
          emit(CreateAppointmentFailed(error: "no values"));
        }
      } catch (e) {
        emit(CreateAppointmentFailed(error: e.toString()));
      }
    });
  }
}

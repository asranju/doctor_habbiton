part of 'appointment_bloc.dart';

@immutable
abstract class AppointmentState {}

class AppointmentInitial extends AppointmentState {}

class AppointmentRefresh extends AppointmentState {}


class AppointmentSuccess extends AppointmentState {}

class AppointmentFailed extends AppointmentState {
  final String error;
  AppointmentFailed({required this.error});

}


@immutable
abstract class CreateAppointmentState {}

class CreateAppointmentInitial extends CreateAppointmentState {}

class CreateAppointmentRefresh extends CreateAppointmentState {}


class CreateAppointmentSuccess extends CreateAppointmentState {}

class CreateAppointmentFailed extends CreateAppointmentState {
  final String error;
  CreateAppointmentFailed({required this.error});

}

part of 'appointment_bloc.dart';

@immutable
abstract class AppointmentEvent {}


class AppointmentLoading extends AppointmentEvent{


}

class CreatingAppointmentLoading extends AppointmentEvent{
final Map data;
CreatingAppointmentLoading({required this.data});
}
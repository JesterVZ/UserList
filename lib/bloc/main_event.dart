import 'package:equatable/equatable.dart';

class Event extends Equatable {
  const Event();

  @override
  List<Object> get props => [];
}

class GetUsersEvent extends Event {
  const GetUsersEvent();
}

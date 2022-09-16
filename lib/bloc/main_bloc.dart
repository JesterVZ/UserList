import 'package:bloc/bloc.dart';
import 'package:test_task/bloc/main_event.dart';
import 'package:test_task/bloc/main_state.dart';
import 'package:test_task/repository/main_repo.dart';

class MainBloc extends Bloc<Event, MainState> {
  final MainRepo repo;

  MainBloc(this.repo) : super(MainState.initial());
}

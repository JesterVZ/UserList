import 'package:flutter/material.dart';
import 'package:test_task/bloc/main_bloc.dart';
import 'package:test_task/bloc/main_state.dart';
import 'package:test_task/elements/bloc_screen.dart';

class UserList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _UserList();
}

class _UserList extends State<UserList> {
  MainBloc? mainBloc;
  @override
  Widget build(BuildContext context) {
    return BlocScreen<MainBloc, MainState>(
        bloc: mainBloc,
        listener: (context, state) => _listener(context, state),
        builder: (context, state) {
          return Scaffold();
        });
  }

  _listener(BuildContext context, MainState state) {
    if (state.loading == true) {
      return;
    }
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}

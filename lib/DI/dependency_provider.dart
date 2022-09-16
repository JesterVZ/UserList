import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:test_task/bloc/main_bloc.dart';
import 'package:test_task/repository/main_repo.dart';

import '../http/http_client.dart';

class DependencyProvider extends InheritedWidget {
  HttpClientCustom? _httpClient;
  MainBloc? _mainBloc;
  MainRepo? _mainRepo;

  DependencyProvider({Key? key, Widget? child})
      : assert(child != null),
        super(key: key, child: child!);

  HttpClientCustom get httpClient {
    _httpClient ??= HttpClientCustom();
    return _httpClient!;
  }

  MainRepo get mainRepo {
    _mainRepo ??= MainRepo(httpClient: httpClient);
    return _mainRepo!;
  }

  MainBloc get mainBloc {
    _mainBloc ??= MainBloc(mainRepo);
    return _mainBloc!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}

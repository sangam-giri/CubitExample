import 'package:cubit_test/controller/cubit/test_cubit/test_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestCubit extends Cubit<TestState> {
  TestCubit() : super(TestInitialState());

  initialState() {
    emit(TestInitialState());
  }

  loadedState() {
    emit(TestLoadedState());
  }

  errorState() {
    emit(TestErrorState());
  }
}

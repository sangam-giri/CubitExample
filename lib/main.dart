import 'package:cubit_test/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'controller/cubit/test_cubit/test_cubit.dart';
part 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const CubitTest());
}

import 'package:cubit_test/controller/cubit/test_cubit/test_cubit.dart';
import 'package:cubit_test/controller/cubit/test_cubit/test_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<TestCubit>(context).initialState();
                  },
                  child: Text("Emit Initial")),
              ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<TestCubit>(context).loadedState();
                  },
                  child: Text("Emit Loaded")),
              ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<TestCubit>(context).errorState();
                  },
                  child: Text("Emit Error")),
              BlocBuilder<TestCubit, TestState>(
                builder: (context, state) {
                  if (state is TestInitialState) {
                    return Text("Initial State");
                  }
                  if (state is TestErrorState) {
                    return Text("Error State");
                  }
                  if (state is TestLoadedState) {
                    return Text("It's Loaded State");
                  }
                  return Center(
                    child: Text("N/A"),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

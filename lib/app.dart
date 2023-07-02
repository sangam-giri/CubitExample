part of 'main.dart';

class CubitTest extends StatelessWidget {
  const CubitTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => TestCubit(),
        child: HomePage(),
      ),
    );
  }
}

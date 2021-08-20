import '../../../../_exports_main.dart';

class BuildLoading extends StatelessWidget {
  const BuildLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

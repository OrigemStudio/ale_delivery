import '../../../../_exports.dart';

class BuildError extends StatelessWidget {
  final String? error;
  const BuildError(this.error, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(error ?? 'error'),
    );
  }
}

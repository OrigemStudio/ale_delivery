import '../../../../../_exports.dart';

class BasePage extends GetView<BaseController> {
  const BasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            controller.obx((catalogs) => CatalogsList(catalogs: catalogs),
                onError: (error) => BuildError(error),
                onEmpty: const BuildEmpty(),
                onLoading: const BuildLoading())
          ],
        ));
  }
}

import '../../../../../_exports_main.dart';

class ProductPage extends GetView<ProductController> {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            controller.obx((Products) => ProductsList(Products: Products),
                onError: (error) => BuildError(error),
                onEmpty: const BuildEmpty(),
                onLoading: const BuildLoading())
          ],
        ));
  }
}

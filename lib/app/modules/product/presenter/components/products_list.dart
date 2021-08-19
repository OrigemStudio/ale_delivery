import '../../../../../_exports.dart';

class ProductsList extends StatelessWidget {
  final List<ProductEntity> Products;
  const ProductsList({Key? key, required this.Products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Products.length,
        itemBuilder: (_, i) => const ListTile(
              title: Text('Product'),
            ));
  }
}

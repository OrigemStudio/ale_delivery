import '../../../../../_exports_main.dart';

class CatalogsList extends StatelessWidget {
  final List<CatalogEntity> catalogs;
  const CatalogsList({Key? key, required this.catalogs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: catalogs.length,
        itemBuilder: (_, i) => const ListTile(
              title: Text('catalog'),
            ));
  }
}

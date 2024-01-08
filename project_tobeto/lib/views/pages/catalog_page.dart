import 'package:flutter/material.dart';
import 'package:project_tobeto/widgets/catalog_page_widgets/catalog_search_bar.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Column(
        children: <Widget>[
          CatalogSearchBar(),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}

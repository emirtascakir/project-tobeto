import 'package:flutter/material.dart';
import 'package:project_tobeto/widgets/catalog_page_widgets/catalog_%20education.dart';
import 'package:project_tobeto/widgets/catalog_page_widgets/catalog_filter_pages/catalog_filter_button.dart';
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
          CatalogFilterButton(),
          SizedBox(height: 15),
          CatalogEducation(),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

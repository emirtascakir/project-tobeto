import 'package:flutter/material.dart';
import 'package:project_tobeto/extensions/extension.dart';
import 'package:project_tobeto/widgets/catalog_page_widgets/catalog_education.dart';
import 'package:project_tobeto/widgets/catalog_page_widgets/catalog_filter_pages/catalog_filter_button.dart';
import 'package:project_tobeto/widgets/catalog_page_widgets/catalog_search_bar.dart';
import 'package:project_tobeto/widgets/home_page_widgets/home_page_footer.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
        children: <Widget>[
          const CatalogSearchBar(),
          const SizedBox(height: 15),
          const CatalogFilterButton(),
          const SizedBox(height: 15),
          SizedBox(
            width: context.deviceSize.width,
            height: context.deviceSize.height * .45,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const CatalogEducation();
              },
              itemCount: 5,
            ),
          ),
          const SizedBox(height: 30),
          const HomePageFooter()
        ],
      ),
    );
  }
}

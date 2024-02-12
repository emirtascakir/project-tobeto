import 'package:flutter/material.dart';

import 'package:project_tobeto/widgets/catalog_page_widgets/catolog%20_education_pages/catalog_education.dart';
import 'package:project_tobeto/widgets/catalog_page_widgets/catalog_filter_pages/catalog_filter_button.dart';
import 'package:project_tobeto/widgets/catalog_page_widgets/catolog%20_education_pages/catolog%20_education2.dart';
import 'package:project_tobeto/widgets/catalog_page_widgets/catolog%20_education_pages/catolog_education3.dart';
import 'package:project_tobeto/widgets/catalog_page_widgets/catolog%20_education_pages/next_button.dart';
import 'package:project_tobeto/widgets/catalog_page_widgets/catolog_search_bar_pages/catalog_search_bar.dart';
import 'package:project_tobeto/widgets/home_page_widgets/home_page_footer.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: const Column(
          children: <Widget>[
            CatalogSearchBar(),
            SizedBox(height: 15),
            CatalogFilterButton(),
            SizedBox(height: 15),
            CatalogEducation(),
            SizedBox(height: 40),
            CatalogEducation2(),
            SizedBox(height: 40),
            CatalogEducation3(),
            SizedBox(height: 40),
            NextButton(),
            SizedBox(height: 30),
            HomePageFooter()
          ],
        ),
      ),
    );
  }
}

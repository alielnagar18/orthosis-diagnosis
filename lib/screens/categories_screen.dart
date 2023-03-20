import 'package:flutter/material.dart';
import '../widgets/category_item.dart';
import '../dummy_data.dart';


class CategoriesScreen extends StatelessWidget {
  static const routeName = 'category_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES.map((catData) =>
            CategoryItem(catData.id, catData.title, catData.color),
        ).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 900,
          childAspectRatio: 3/2,
          crossAxisSpacing: 5,
          mainAxisExtent: 90,
        ),
      ),
    );
  }
}

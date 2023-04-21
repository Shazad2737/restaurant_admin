import 'package:flutter/material.dart';
import 'package:restaurant_admin/ui/widgets/category_card.dart';
import 'package:restaurant_admin/ui/widgets/custom_search.dart';

class FoodCategoryScreen extends StatefulWidget {
  const FoodCategoryScreen({super.key});

  @override
  State<FoodCategoryScreen> createState() => _FoodCategoryScreenState();
}

class _FoodCategoryScreenState extends State<FoodCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 1000,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            CustomSearch(
              onSearch: (search) {},
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Expanded(
            //       flex: 4,
            //       child: CustomSearch(
            //         onSearch: (search) {},
            //       ),
            //     ),
            //     const SizedBox(
            //       width: 20,
            //     ),
            //     Expanded(
            //       child: CustomActionButton(
            //         iconData: Icons.add,
            //         label: 'Add Category',
            //         onPressed: () {
            //           showDialog(
            //             context: context,
            //             builder: (context) => const AddFoodCategoryDialog(),
            //           );
            //         },
            //       ),
            //     ),
            //   ],
            // ),
            const Divider(
              height: 40,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: List<Widget>.generate(
                    10,
                    (index) => const CategoryCard(),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

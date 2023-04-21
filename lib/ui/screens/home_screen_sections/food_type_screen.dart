import 'package:flutter/material.dart';
import 'package:restaurant_admin/ui/widgets/custom_search.dart';
import 'package:restaurant_admin/ui/widgets/item_card.dart';

class FoodTypeScreen extends StatefulWidget {
  const FoodTypeScreen({super.key});

  @override
  State<FoodTypeScreen> createState() => _FoodTypeScreenState();
}

class _FoodTypeScreenState extends State<FoodTypeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 1000,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            //         label: 'Add Type',
            //         onPressed: () {
            //           showDialog(
            //             context: context,
            //             builder: (context) => const AddFoodTypeDialog(),
            //           );
            //         },
            //       ),
            //     ),
            //   ],
            // ),
            const Divider(
              height: 40,
            ),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: List<Widget>.generate(
                10,
                (index) => const ItemCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
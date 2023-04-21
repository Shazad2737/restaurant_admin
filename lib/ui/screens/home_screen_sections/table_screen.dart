import 'package:flutter/material.dart';
import 'package:restaurant_admin/ui/widgets/custom_search.dart';
import 'package:restaurant_admin/ui/widgets/item_card.dart';

class TableScreen extends StatefulWidget {
  const TableScreen({super.key});

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
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
            //         label: 'Add Table',
            //         onPressed: () {
            //           showDialog(
            //             context: context,
            //             builder: (context) => const AddTableDialog(),
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
                    (index) => const ItemCard(
                      label: 'A2',
                    ),
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

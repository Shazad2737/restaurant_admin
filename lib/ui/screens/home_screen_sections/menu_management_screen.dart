import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_admin/ui/widgets/task_container.dart';

import '../../widgets/food_item.dart';
import '../../widgets/label_with_text.dart';

class MenuManagementSection extends StatelessWidget {
  const MenuManagementSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF006758),
      child: Row(
        children: [
          TaskContainer(
            heading: "Menu",
            subheading: "10",
          ),
          Expanded(
            child: Material(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) => Container(
                        color: Colors.white,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                "https://rasamalaysia.com/wp-content/uploads/2009/07/steamed_dumplings_thumb.jpg",
                                height: 100,
                                width: 120,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Steamed Momos",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Price \$10.30",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w100,
                                          fontSize: 15),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Steamed momos are meat filled dumplings from the east Indian state of Sikkim.\nYou can fill them with any minced meat of your choice.\nThese dumplings are usually served with fiery tomato chutney and a clear soup called thukpa.",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black.withOpacity(.30),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.edit),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.delete),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      separatorBuilder: (context, index) => const Divider(
                        height: 20,
                      ),
                      itemCount: 5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

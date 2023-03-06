import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_admin/ui/widgets/task_container.dart';

import '../../widgets/food_item.dart';
import '../../widgets/label_with_text.dart';

class NotificationsSection extends StatelessWidget {
  const NotificationsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF006758),
      child: Row(
        children: [
          TaskContainer(
            heading: "Notifications",
            subheading: "10",
          ),
          Expanded(
            child: Material(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 50, left: 50, top: 30),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 80,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "New",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff006758),
                            ),
                          ),
                          Text(
                            "New order starts automatically",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 30),
                    child: Text(
                      "Task info",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff006758),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 30, right: 350),
                    child: Row(
                      children: [
                        Expanded(
                          child: LabelWithText(
                            label: "Preparing Time",
                            text: "00h:13m:33s",
                          ),
                        ),
                        SizedBox(
                          height: 60,
                          child: VerticalDivider(
                            width: 60,
                          ),
                        ),
                        Expanded(
                          child: LabelWithText(
                            label: "Table",
                            text: "A",
                          ),
                        ),
                        SizedBox(
                          height: 60,
                          child: VerticalDivider(
                            width: 60,
                          ),
                        ),
                        Expanded(
                          child: LabelWithText(
                            label: "Austin Paul",
                            text: "+491 32456",
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          "Task #0463",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff006758),
                              fontSize: 17),
                        ),
                      ),
                      Icon(
                        Icons.check_circle,
                        color: Color(0xff006758),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Divider(
                      height: 3,
                      thickness: 3,
                      color: Colors.black.withOpacity(0.07),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 10),
                        child: Text(
                          "Task #0456",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff006758),
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.hourglass_bottom,
                        color: Color(0xff006758),
                      )
                    ],
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

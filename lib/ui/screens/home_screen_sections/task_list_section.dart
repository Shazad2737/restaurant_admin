import 'package:flutter/material.dart';

import '../../widgets/label_with_text.dart';

class TaskListSection extends StatelessWidget {
  const TaskListSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Material(
          color: Color(0xFFE3EEED),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          child: SizedBox(
            width: 300,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Task List",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Color(0xff006758),
                      ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Material(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.zero,
                      topLeft: Radius.zero,
                      topRight: Radius.circular(15),
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Task #0435",
                              style: TextStyle(
                                  color: Color(0xff006758),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.schedule,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "As soon as",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(.5),
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Material(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 50, left: 50, top: 30),
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
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 350),
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
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: FoodItem(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class FoodItem extends StatelessWidget {
  const FoodItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://media.cnn.com/api/v1/images/stellar/prod/220428140436-04-classic-american-hamburgers.jpg?c=original',
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text("Hamburger"),
                ),
                Expanded(
                  child: Text("x3"),
                ),
                Expanded(
                  flex: 3,
                  child: Text("with cheese"),
                ),
                Expanded(
                  flex: 2,
                  child: Text("\$36.99"),
                ),
              ],
            ),
          ),
          Divider(
            height: 3,
            thickness: 3,
            color: Colors.black.withOpacity(0.25),
          ),
        ],
      ),
    );
  }
}

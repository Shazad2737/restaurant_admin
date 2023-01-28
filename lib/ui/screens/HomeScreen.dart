import 'package:flutter/material.dart';
import 'package:restaurant_admin/ui/screens/home_screen_sections/order_history_section.dart';

import '../widgets/custom_section_button.dart';
import 'home_screen_sections/task_list_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0, //change to the index of currently editing section
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF006758),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              child: Column(
                children: [
                  CustomSectionButton(
                    iconData: Icons.list,
                    isSelected: tabController.index == 0,
                    onPressed: () {
                      tabController.animateTo(0);
                      setState(() {});
                    },
                  ),
                  CustomSectionButton(
                    iconData: Icons.task,
                    isSelected: tabController.index == 1,
                    onPressed: () {
                      tabController.animateTo(1);
                      setState(() {});
                    },
                  ),
                  CustomSectionButton(
                    iconData: Icons.dining_sharp,
                    isSelected: false,
                    onPressed: () {},
                  ),
                  CustomSectionButton(
                    iconData: Icons.list,
                    isSelected: false,
                    onPressed: () {},
                  ),
                  CustomSectionButton(
                    iconData: Icons.list,
                    isSelected: false,
                    onPressed: () {},
                  ),
                  CustomSectionButton(
                    iconData: Icons.list,
                    isSelected: false,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  TaskListSection(),
                  OrderHistoryScreen(),
                  Container(
                    color: Colors.green,
                  ),
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

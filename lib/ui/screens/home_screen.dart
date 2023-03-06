import 'package:flutter/material.dart';
import 'package:restaurant_admin/ui/screens/home_screen_sections/notifications_section.dart';
import 'package:restaurant_admin/ui/screens/home_screen_sections/order_history_section.dart';
import 'package:restaurant_admin/ui/screens/home_screen_sections/tables_section.dart';

import '../widgets/custom_section_button.dart';
import 'home_screen_sections/menu_management_screen.dart';
import 'home_screen_sections/reservation_section.dart';
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
      length: 6,
      vsync: this,
      initialIndex: 3, //change to the index of currently editing section
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
                    isSelected: tabController.index == 2,
                    onPressed: () {
                      tabController.animateTo(2);
                      setState(() {});
                    },
                  ),
                  CustomSectionButton(
                    iconData: Icons.room_service,
                    isSelected: tabController.index == 3,
                    onPressed: () {
                      tabController.animateTo(3);
                      setState(() {});
                    },
                  ),
                  CustomSectionButton(
                    iconData: Icons.deck,
                    isSelected: tabController.index == 4,
                    onPressed: () {
                      tabController.animateTo(4);
                      setState(() {});
                    },
                  ),
                  CustomSectionButton(
                    iconData: Icons.notifications,
                    isSelected: tabController.index == 5,
                    onPressed: () {
                      tabController.animateTo(5);
                      setState(() {});
                    },
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
                  OrderHistorySection(),
                  MenuManagementSection(),
                  ReservationSection(),
                  TablesSection(),
                  NotificationsSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

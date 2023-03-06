import 'package:flutter/material.dart';
import 'package:restaurant_admin/ui/screens/home_screen_sections/notifications_section.dart';
import 'package:restaurant_admin/ui/screens/home_screen_sections/order_history_section.dart';
import 'package:restaurant_admin/ui/screens/home_screen_sections/tables_section.dart';
import 'package:restaurant_admin/ui/widgets/custom_button.dart';

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
                  CustomSectionButton(
                    iconData: Icons.logout,
                    isSelected: tabController.index == 5,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10,
                            ),
                            child: SizedBox(
                              width: 350,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Logout',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Are you sure you want to logout ?',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge!
                                        .copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: CustomButton(
                                          label: 'Cancel',
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          color: Colors.grey[300]!,
                                          labelColor: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        child: CustomButton(
                                          label: 'Logout',
                                          onPressed: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
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

import 'package:flutter/material.dart';

class TaskContainer extends StatelessWidget {
  const TaskContainer({
    Key? key,
    required this.heading,
    required this.subheading,
  }) : super(key: key);
  final String heading;
  final String subheading;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 155, 201, 194),
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
              heading,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Color(0xff006758),
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 3,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  height: 10,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return TaskItem(
                    taskName: "Task 23",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TaskItem extends StatelessWidget {
  const TaskItem({
    Key? key,
    required this.taskName,
    this.isSelected = false,
  }) : super(key: key);

  final String taskName;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(15),
        bottomRight: Radius.zero,
        topLeft: Radius.zero,
        topRight: Radius.circular(15),
      ),
      child: SizedBox(
        width: double.infinity,
        child: IntrinsicHeight(
          child: Row(
            children: [
              isSelected
                  ? Container(
                      width: 10,
                      decoration: BoxDecoration(
                        color: const Color(0xff006758),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                        ),
                      ),
                    )
                  : const SizedBox(),
              const SizedBox(
                width: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      taskName,
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
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomSectionButton extends StatelessWidget {
  final IconData iconData;
  final Function() onPressed;
  final bool isSelected;

  const CustomSectionButton({
    Key? key,
    required this.iconData,
    required this.onPressed,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          iconData,
          color: isSelected ? Colors.white : Colors.white60,
        ),
      ),
    );
  }
}

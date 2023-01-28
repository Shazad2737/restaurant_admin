import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Function() onPressed;
  final Color color;
  const CustomButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.color = Colors.green,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30),
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: Theme.of(context).textTheme.button?.copyWith(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

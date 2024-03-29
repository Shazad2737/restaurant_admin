import 'package:flutter/material.dart';
import 'package:restaurant_admin/ui/widgets/custom_card.dart';

class CustomActionButton extends StatelessWidget {
  final IconData iconData;
  final String label;
  final Color color, labelColor, iconColor, hoverBorderColor;
  final Function() onPressed;
  final bool isLoading;
  final MainAxisSize mainAxisSize;
  const CustomActionButton({
    super.key,
    required this.iconData,
    this.color = Colors.green,
    required this.onPressed,
    required this.label,
    this.isLoading = false,
    this.mainAxisSize = MainAxisSize.max,
    this.labelColor = Colors.white,
    this.iconColor = Colors.white,
    this.hoverBorderColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      hoverBorderColor: hoverBorderColor,
      color: color,
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10,
          bottom: 10,
        ),
        child: isLoading
            ? SizedBox(
                width: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: LinearProgressIndicator(
                    color: color,
                    backgroundColor: color.withOpacity(.2),
                  ),
                ),
              )
            : Row(
                mainAxisSize: mainAxisSize,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    label,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: labelColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(width: 5),
                  Icon(
                    iconData,
                    color: iconColor,
                    size: 16,
                  ),
                ],
              ),
      ),
    );
  }
}

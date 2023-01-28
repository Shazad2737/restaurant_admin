import 'package:flutter/material.dart';

class LabelWithText extends StatelessWidget {
  final String label, text;
  const LabelWithText({
    Key? key,
    required this.label,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black.withOpacity(0.5)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xff006758)),
          ),
        )
      ],
    );
  }
}

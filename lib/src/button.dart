import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final double height;
  final double width;
  final bool isDark;
  final bool hasBorder;
  final bool isTwoIcon;

  const Button({
    Key? key,
    this.isDark = true,
    required this.hasBorder,
    required this.height,
    required this.width,
    this.isTwoIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF5D5FEF) : Colors.white,
        borderRadius: BorderRadius.circular(4),
        border: hasBorder
            ? Border.all(color: const Color(0xFFE2E8F0), width: 1)
            : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isTwoIcon
              ? Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(
                    Icons.add,
                    size: 24,
                    color: isDark ? Colors.white : const Color(0xFF5D5FEF),
                  ),
                )
              : const SizedBox(),
          Icon(
            Icons.add,
            size: 24,
            color: isDark ? Colors.white : const Color(0xFF5D5FEF),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "Button",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: isDark ? Colors.white : const Color(0xFF5D5FEF),
              ),
            ),
          ),
          Icon(
            Icons.add,
            size: 24,
            color: isDark ? Colors.white : const Color(0xFF5D5FEF),
          ),
        ],
      ),
    );
  }
}

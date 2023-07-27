import 'package:flutter/material.dart';

class EduToggle extends StatefulWidget {
  final List<String> elements;
  final bool isDark;

  const EduToggle({Key? key, required this.elements, this.isDark = false})
      : super(key: key);

  @override
  State<EduToggle> createState() => _EduToggleState();
}

class _EduToggleState extends State<EduToggle> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        widget.elements.length,
        (index) => index == 0
            ? GestureDetector(
                onTap: () {
                  selectedIndex = index;
                  setState(() {});
                },
                child: first(widget.elements[index], index),
              )
            : index == widget.elements.length - 1
                ? GestureDetector(
                    onTap: () {
                      selectedIndex = index;
                      setState(() {});
                    },
                    child: last(widget.elements[index], index),
                  )
                : GestureDetector(
                    onTap: () {
                      selectedIndex = index;
                      setState(() {});
                    },
                    child: middle(widget.elements[index], index),
                  ),
      ),
    );
  }

  Widget first(String text, int index) {
    return Container(
      decoration: BoxDecoration(
        color: selectedIndex==index &&  widget.isDark ? const Color(0xFF4F46E5) : widget.isDark? const Color(0xFF5D5FEF):const Color(0xFFFFFFFF),
        //  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
        border: Border(
          left: BorderSide(
            color: Color(0xFFE2E8F0),
          ),
          top: BorderSide(
            color: Color(0xFFE2E8F0),
          ),
          bottom: BorderSide(
            color: Color(0xFFE2E8F0),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Text(
          text,
          style: TextStyle(
            color: selectedIndex == index
                ? widget.isDark
                    ? const Color(0xFFFFFFFF)
                    : const Color(0xFF5D5FEF)
                : widget.isDark
                    ? const Color(0xFFFFFFFF)
                    : const Color(0xFF475569),
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget last(String text, int index) {
    return Container(
      decoration: BoxDecoration(
        color: selectedIndex==index &&  widget.isDark ? const Color(0xFF4F46E5) : widget.isDark? const Color(0xFF5D5FEF):const Color(0xFFFFFFFF),
        //  borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
        border: Border(
          right: BorderSide(
            color: Color(0xFFE2E8F0),
          ),
          top: BorderSide(
            color: Color(0xFFE2E8F0),
          ),
          bottom: BorderSide(
            color: Color(0xFFE2E8F0),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Text(
          text,
          style: TextStyle(
            color: selectedIndex == index
                ? widget.isDark
                    ? const Color(0xFFFFFFFF)
                    : const Color(0xFF5D5FEF)
                : widget.isDark
                    ? const Color(0xFFFFFFFF)
                    : const Color(0xFF475569),
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget middle(String text, int index) {
    return Container(
      decoration: BoxDecoration(
        color: selectedIndex==index &&  widget.isDark ? const Color(0xFF4F46E5) : widget.isDark? const Color(0xFF5D5FEF):const Color(0xFFFFFFFF),
        border: Border.all(
          color: const Color(0xFFE2E8F0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Text(
          text,
          style: TextStyle(
            color: selectedIndex == index
                ? widget.isDark
                    ? const Color(0xFFFFFFFF)
                    : const Color(0xFF5D5FEF)
                : widget.isDark
                    ? const Color(0xFFFFFFFF)
                    : const Color(0xFF475569),
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

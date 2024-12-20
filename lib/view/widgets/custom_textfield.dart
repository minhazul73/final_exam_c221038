import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {

  final String hint, tag;
  final TextEditingController controller;
  final IconData iconData;
  final bool enabled;

  const CustomTextfield({super.key, required this.hint, required this.controller, required this.tag, required this.iconData, this.enabled = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(TextSpan(children: [
        WidgetSpan(
            child: Icon(
              iconData,
            ),
            alignment: PlaceholderAlignment.middle),
        TextSpan(
            text: "  $tag",
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontFamily: "SF-Pro")),
      ])),
        const SizedBox(height: 7,),
        TextField(
          enabled: enabled,
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
            filled: true,
            fillColor: Colors.black,
            // Change to a solid color
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11.0),
              borderSide: BorderSide(
                width: 3.0, // Set the border width here
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11.0),
              borderSide: BorderSide(
                // Change to a different color when focused
                width: 2.0, // Keep the same width
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11.0),
              borderSide: BorderSide(
                // Change to a different color when focused
                width: 2.0, // Keep the same width
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11.0),
              borderSide: BorderSide(
                // Change to a different color when focused
                width: 2.0, // Keep the same width
              ),
            ),
            contentPadding:
            EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
      ],
    );
  }
}

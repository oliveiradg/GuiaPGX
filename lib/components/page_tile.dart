// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PageTile extends StatelessWidget {
  const PageTile({
    Key? key,
    required this.label,
    required this.iconData,
    required this.onTap,
    required this.highLighted,
  }) : super(key: key);

  final String label;
  final IconData iconData;
  final VoidCallback onTap;
  final bool highLighted;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
      leading: Icon(iconData, color: highLighted ? Colors.black : Colors.blue, size: 32),
      onTap: onTap,
      selected: highLighted,
    );
  }
}

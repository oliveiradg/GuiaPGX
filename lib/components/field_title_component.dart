// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FieldTitleComponent extends StatelessWidget {
  const FieldTitleComponent({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      
      padding: const EdgeInsets.only(
        left: 3,
        bottom: 4,
        
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

       
       
      
        
                children: [
        Text(title,
        style: TextStyle(
          fontSize: 16,
          color: Colors.grey[800],
          fontWeight: FontWeight.w700,
        ),),

        Text(subtitle,
        style: TextStyle(
          fontSize: 12,
          color: Colors.grey[800],
          fontWeight: FontWeight.w400,
        ),),
        
      ],)
    );
  }
}

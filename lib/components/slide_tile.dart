import 'package:flutter/material.dart';

class SlideTile extends StatelessWidget {
  const SlideTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage('assets/images/madero.jpg'),
          
          fit: BoxFit.none
        ),
     
        
      ),
    );
  }
}

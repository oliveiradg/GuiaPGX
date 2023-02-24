import 'package:flutter/material.dart';

class SlideTile extends StatelessWidget {
  const SlideTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage('assets/images/usuario.jpg'),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

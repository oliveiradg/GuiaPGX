import 'package:flutter/material.dart';
import 'package:guia_pgx/components/custom_drawer/custom_drawer_header.dart';
import 'package:guia_pgx/components/custom_drawer/pages/page_section.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: const BorderRadius.horizontal(
        right: Radius.circular(60),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child:  Drawer(
          child: ListView(
            children: const [
              CustomDrawerHeader(),
              PageSection(),
            ],
          ),
        ),
      ),
    );
  }
}

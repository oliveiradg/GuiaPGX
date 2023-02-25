import 'package:flutter/material.dart';
import 'package:guia_pgx/app/views/home_page_view.dart';

class BaseView extends StatelessWidget {
  final PageController pageController = PageController(); //comando para mudar a pagina através do controller

  BaseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
        const   HomePageView(),
          
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.purple,
          ),
          Container(
            color: Colors.brown,
          ),
        ],
      ),
    );
  }
}

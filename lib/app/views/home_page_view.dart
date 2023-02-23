import 'package:flutter/material.dart';
import 'package:guia_pgx/components/custom_drawer/custom_drawer.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     drawer: const CustomDrawer(),
      

      //appBar
    
      appBar: AppBar(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                const  Icon(Icons.location_on, color: Colors.white, size: 32,) ,
              Container(
                  padding: const EdgeInsets.all(8.0), child: const Text('Guia PGX', style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold
                  )),),
            ],

          ),
  ),
      

      //body

      body: Column(
        children: [
          Expanded(
              child: PageView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext _, currentIndex) {
              return Container();
            },
          ))
        ],
      ),
    );
  }
}

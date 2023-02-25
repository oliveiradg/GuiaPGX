import 'package:flutter/material.dart';
import 'package:guia_pgx/components/custom_drawer/custom_drawer.dart';
import 'package:guia_pgx/components/slide_tile.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),

      //appBar

      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.location_on,
              color: Colors.white,
              size: 32,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text('Guia PGX',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            ),
            Container(
              padding: const EdgeInsets.all(35.0),
            ),
          ],
        ),
      ),

      //body

      body: SizedBox(
        
        height: 300.0,
        width: 400.0,
        child: Column(
          
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext _, currentIndex) {
                  return const SlideTile();
                },
              ),
            ),
            
          ],
        ),
      ),
    );
  }

  Widget _buildBullets() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
        Container(
          
          width: 10,
          height: 10,
          decoration: const BoxDecoration(
            color: Colors.red,
           
            borderRadius: BorderRadius.all(Radius.circular(30),),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: 10,
          height: 10,
          decoration: const BoxDecoration(
            color: Colors.grey,
          
            borderRadius: BorderRadius.all(Radius.circular(30),),
          ),
        ),
        Container(
          
          width: 10,
          height: 10,
          decoration: const BoxDecoration(
            color: Colors.grey,
       
            borderRadius: BorderRadius.all(Radius.circular(30),),
          ),
        ),
        

        
      ]),
    );
  }
}

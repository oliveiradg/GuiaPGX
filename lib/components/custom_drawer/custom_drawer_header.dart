import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {

  const CustomDrawerHeader({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Container(
        color: Colors.red,
        height: 95,
        padding: const EdgeInsets.symmetric(horizontal: 20),
         child: Row(
          children: [
           const  Icon(Icons.person, color: Colors.white, size: 35,),
            const   SizedBox(width: 20,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                      
                children: const [
                  Text(
                    'Acesse sua conta agora!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Clique aqui',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
         ),
       );
  }
}
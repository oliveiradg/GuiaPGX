import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {

  const SignUpView({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
        centerTitle: true,
      ),
           body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 32),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 8,
             child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: const [
                    
                  ],
                ),),
          ),),),
       );
  }
}
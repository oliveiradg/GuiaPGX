import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guia_pgx/components/image_source_dialog.dart';

class ImagesField extends StatelessWidget {
  const ImagesField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     void onImageSelected(File image){
      Navigator.of(context).pop();
     }
    return Container(
      color: Colors.grey[200],
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (_, index) {
          return GestureDetector(
              onTap: () {
                if (!Platform.isAndroid) {
                  showModalBottomSheet(
                      context: context,
                      builder: (_) => ImageSourceDialog(onImageSelected: (File ) {  },));
                } else {
                  showCupertinoModalPopup(
                      context: context,
                      builder: (_) =>  ImageSourceDialog(onImageSelected: (File ) {  },));
                }
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey[300],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.camera_alt,
                        size: 40,
                        color: Colors.white,
                      ),
                      Text(
                        '+ Inserir',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:guia_pgx/components/image_source_dialog.dart';
import 'package:guia_pgx/stores/create_store.dart';

class ImagesField extends StatelessWidget {
  final CreateStore createStore;
  const ImagesField({
    Key? key,
    required this.createStore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void onImageSelected(File image) {
      createStore.images.add(image);
      Navigator.of(context).pop();
    }

    return Container(
      color: Colors.grey[200],
      height: 120,
      child: Observer(builder:(_){
          return  ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: createStore.images.length + 1,
        itemBuilder: (_, index) {
          return GestureDetector(
              onTap: () {
                if (!Platform.isAndroid) {
                  showModalBottomSheet(
                      context: context,
                      builder: (_) => ImageSourceDialog(
                            onImageSelected: (onImageSelected) ,
                          ));
                } else {
                  showCupertinoModalPopup(
                      context: context,
                      builder: (_) => ImageSourceDialog(
                            onImageSelected: (onImageSelected),
                          ));
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
          );
      })
    );
  }
}

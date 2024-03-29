import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guia_pgx/components/custom_drawer/custom_drawer.dart';
import 'package:guia_pgx/components/images_field.dart';
import 'package:guia_pgx/stores/create_store.dart';

class CreateView extends StatelessWidget {
  final CreateStore createStore = CreateStore();

   CreateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text('Criar Anuncio'),
        centerTitle: true,
      ),
      body: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 8,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          //Imagens

          ImagesField(createStore: createStore),

          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Titulo*',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Descrição*',
            ),
            maxLines: null,
          ),
          //Categoria

          //CEP

          //Preço
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Preço*',
              prefixText: 'R\$ ',
            ),
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ]),
      ),
    );
  }
}

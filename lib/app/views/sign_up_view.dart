import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guia_pgx/components/field_title_component.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:  [
                  const FieldTitleComponent(
                      title: 'Apelido',
                      subtitle: 'Como aparecerá em seus anúncios'),
                  
                  const TextField(
                    decoration:  InputDecoration(
                      hintText: 'Exemplo: João S.',
                      border:  OutlineInputBorder(),
                      
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
              
                  const FieldTitleComponent(
                      title: 'E-mail',
                      subtitle: 'Enviaremos um e-mail de confirmação'),
                 
                  const TextField(
                    decoration:  InputDecoration(hintText: 'Exemplo:   '),
                    keyboardType: TextInputType.emailAddress,
                    
                  ),
                  const SizedBox(
                    height: 16,
                  ),
              
                  const FieldTitleComponent(
                      title: 'Celular', subtitle: 'Proteja sua conta'),
                
                   TextField(
                    decoration: const  InputDecoration(hintText: 'Exemplo:   '),
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const FieldTitleComponent(
                      title: 'Senha', subtitle: 'Use letras, números e caracteres'),
                 
                  const TextField(
                    decoration:  InputDecoration(hintText: 'Exemplo:   '),
                  ),  
                  const SizedBox(
                    height: 16,
                  ),
                  const FieldTitleComponent(
                      title: 'Confirmar Senha', subtitle: 'Repita a senha'),
               
                  const TextField(
                    decoration:  InputDecoration(hintText: 'Exemplo:   '),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 44,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        onPrimary: Colors.white,
                       
                      ),
                      child: const Text('Cadastrar'),
                    ),
                  ),

                  const Divider(
                    color: Colors.black,
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                       const   Text(
                            'Já tem uma conta?',
                            style: TextStyle(fontSize: 16),
                          ),
                        
                      
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Entrar',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                        ),
                      ),],),
                    ],
                  ),
                  
                
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

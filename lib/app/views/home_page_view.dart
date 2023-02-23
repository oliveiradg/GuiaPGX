import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //drawer
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text(
                "Joao Oliveira",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              accountEmail: Text(
                "joao@devflutter.com",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/65923951?s=96&v=4'),
                backgroundColor: Colors.transparent,
              ),
            ),
            ListTile(
                leading: const Icon(
                  Icons.star,
                  color: Colors.red,
                ),
                title: const Text("Favoritos"),
                subtitle: const Text("meus favoritos..."),
                trailing: const Icon(
                  Icons.arrow_forward,
                  color: Colors.red,
                ),
                onTap: () {
                  debugPrint('toquei no drawer');
                }),
            ListTile(
                leading: const Icon(
                  Icons.account_circle,
                  color: Colors.red,
                ),
                title: const Text("Perfil"),
                subtitle: const Text("Perfil do usuário..."),
                trailing: const Icon(
                  Icons.arrow_forward,
                  color: Colors.red,
                ),
                onTap: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),

      //appBar

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/images/logo pgx.png",
          fit: BoxFit.contain,
          height: 36,
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

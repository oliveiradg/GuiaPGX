import 'package:flutter/material.dart';
import 'package:guia_pgx/components/page_tile.dart';

class PageSection extends StatelessWidget {
  const PageSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PageTile(
          iconData: Icons.home,
          label: 'Início',
          onTap: () {},
          highLighted: true,
        ),
        PageTile(
          iconData: Icons.wallet,
          label: 'Cupons',
          onTap: () {},
          highLighted: false,
        ),
        PageTile(
          iconData: Icons.favorite_rounded,
          label: 'Fidelidade',
          onTap: () {},
          highLighted: false,
        ),
        PageTile(
          iconData: Icons.location_on,
          label: 'Localização',
          onTap: () {},
          highLighted: false,
        ),
        PageTile(
          iconData: Icons.storefront,
          label: 'Lojas & Serviços',
          onTap: () {},
          highLighted: false,
        ),
        PageTile(
          iconData: Icons.shopping_cart,
          label: 'Comprar',
          onTap: () {},
          highLighted: false,
        ),
        PageTile(
          iconData: Icons.shopify,
          label: 'Vender',
          onTap: () {},
          highLighted: false,
        ),
        PageTile(
          iconData: Icons.key,
          label: 'Alugar',
          onTap: () {},
          highLighted: false,
        ),
        PageTile(
          iconData: Icons.speaker,
          label: 'Anuncie Conosco',
          onTap: () {},
          highLighted: false,
        ),
        PageTile(
          iconData: Icons.person,
          label: 'Minha Conta',
          onTap: () {},
          highLighted: false,
        ),
        const Divider(),

        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              
          Text(
            'Termos de uso',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        SizedBox(height: 8,),
          Text(
            'Política de privacidade',
            style: TextStyle(
              fontSize: 16,
            ),
          ),

            ],

          ),
        ),




       
      ],
    );
  }
}

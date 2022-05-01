import 'package:flutter/material.dart';
import 'package:layout_responsivo_loja_virtual/widget/item_produto.dart';
import 'package:layout_responsivo_loja_virtual/widget/mobile_app_bar.dart';
import 'package:layout_responsivo_loja_virtual/widget/web_app_bar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({Key? key}) : super(key: key);

  @override
  State<LojaVirtual> createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {

  _ajustarVisualizacao(double larguraTela){

    int colunas = 2;

    if ( larguraTela <= 600 ){
      colunas = 2;
    }else if ( larguraTela <= 960 ){
      colunas = 4;
    }else {
      colunas = 6;
    }
    return colunas;
  }

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
        builder: (context, constraints) {

          var largura = constraints.maxWidth;
          var alturaBarra = AppBar().preferredSize.height;

          return Scaffold(
            appBar: largura < 600
                ? PreferredSize(
                child: MobileAppBar(),
                preferredSize: Size(largura, alturaBarra )
            )
                : PreferredSize(
                child: WebAppBar(),
                preferredSize: Size(largura, alturaBarra )
            ),

            body: Padding(
              padding: EdgeInsets.all(16),

              child: GridView.count(
                crossAxisCount: _ajustarVisualizacao(largura),
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,

                children: [

                  ItemProduto("Pionner Som Automotivo", "2.500,00", "p1.jpg"),
                  ItemProduto("Pnew Goodyer aro 16", "800,00", "p2.jpg"),
                  ItemProduto("Samsung 9", "4.100,00", "p3.jpg"),
                  ItemProduto("Samsung Edge", "2.150,90", "p4.jpg"),
                  ItemProduto("Galaxy 10", "6.200,00", "p5.jpg"),
                  ItemProduto("Iphone 10", "1.900,20", "p6.jpg"),
                  ItemProduto("Notebook Acer", "2.500,00", "p1.jpg"),
                  ItemProduto("Pnew Goodyer aro 16", "800,00", "p2.jpg"),
                  ItemProduto("Samsung 9", "4.100,00", "p3.jpg"),
                  ItemProduto("Samsung Edge", "2.150,90", "p4.jpg"),
                  ItemProduto("Galaxy 10", "6.200,00", "p5.jpg"),
                  ItemProduto("Iphone 10", "1.900,20", "p6.jpg"),



                  //Exemplo de teste 1
                  /*
                  Container( color: Colors.orange),
                  Container( color: Colors.lightBlueAccent),
                  Container( color: Colors.red),
                  Container( color: Colors.green),
                  Container( color: Colors.black),
                  Container( color: Colors.pink),
                  Container( color: Colors.yellow),
                  Container( color: Colors.lightGreen),
                  Container( color: Colors.deepPurple),
                  Container( color: Colors.greenAccent),
                  Container( color: Colors.brown),
                  Container( color: Colors.lightGreen),
                   */

                ],
              ),
            ),
          );
        });
  }
}

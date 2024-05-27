import 'package:flutter/material.dart';
import 'package:cripto/repositories/moeda_repository.dart';

class MoedasPage extends StatelessWidget {
  const MoedasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabela = MoedaRepository.tabela;

    return Scaffold(
        appBar: AppBar(
          title: Text('Cripto Moedas'),
          backgroundColor: Colors.green,
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext conext,int moeda ){
              return ListTile(
                leading: Image.asset(tabela[moeda].icone),
                title: Text(tabela[moeda].nome),
                trailing: Text(tabela[moeda].preco.toString()),
              );
            },
            padding: EdgeInsets.all(16),
            separatorBuilder: (_,__) => Divider(),
            itemCount: tabela.length,));
  }
}

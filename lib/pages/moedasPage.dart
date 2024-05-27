import 'package:flutter/material.dart';
import 'package:cripto/repositories/moeda_repository.dart';
import 'package:intl/intl.dart';

import '../models/moeda.dart';

class MoedasPage extends StatelessWidget {
  const MoedasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabela = MoedaRepository.tabela;
    List<Moeda> moedasSelecionadas =[];
    NumberFormat real = NumberFormat.currency(locale: 'pt_BR',name: 'R\$');
    return Scaffold(
        appBar: AppBar(
          title: Text('Cripto Moedas'),
          backgroundColor: Colors.green,
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext conext,int moeda ){
              return ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                leading: SizedBox(
                  child: Image.asset(tabela[moeda].icone),
                  width: 40,
                ),
                title: Text(tabela[moeda].nome, style : TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                )),
                trailing: Text(real.format(tabela[moeda].preco),
                    style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                )),
                selected: false,
                selectedTileColor: Colors.indigo[50],
                onLongPress:(){
                  (moedasSelecionadas.contains(tabela[moeda]))?
                    moedasSelecionadas.remove(tabela[moeda])
                    : moedasSelecionadas.add(tabela[moeda]);
                },
              );
            },
            padding: EdgeInsets.all(16),
            separatorBuilder: (_,__) => Divider(),
            itemCount: tabela.length,));
  }
}

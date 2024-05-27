import 'package:cripto/pages/moedasPage.dart';
import 'package:flutter/material.dart';

class MeuAplicativo extends StatelessWidget{
  const MeuAplicativo({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext contex){
    return  MaterialApp(
      title: 'Moedasbase',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MoedasPage(),
    );
  }
}
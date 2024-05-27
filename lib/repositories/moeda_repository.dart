import 'package:cripto/models/moeda.dart';

class MoedaRepository {
  static List<Moeda> tabela = [
    Moeda(
        icone: 'lib/images/bitcoin.png',
        nome: 'Bitcoin',
        sigla: 'BTC',
        preco: 69800.00),
    Moeda(
      icone: 'lib/images/etherum.png',
      nome: 'Ethereum',
      sigla: 'ETH',
      preco: 19580.00,
    ),
    Moeda(
        icone: 'lib/images/litcoin.png',
        nome: 'Litecoin',
        sigla: 'LTC',
        preco: 84.96
    ),
    Moeda(
        icone: 'lib/images/dogecoin.png',
        nome: 'Dogecoin',
        sigla: 'DOGE',
        preco: 0.17,
    ),
    Moeda(
        icone: 'lib/images/pepecoin.png',
        nome: 'Pepe',
        sigla: 'PEPE',
        preco: 0.00015,
    ),
  ];
}

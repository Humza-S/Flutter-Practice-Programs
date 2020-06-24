import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const api_key = 'E6009006-4907-4525-B484-8B59033DDC58';
const api_key2 = '6FB19470-FCBB-4EC6-9644-20ADD2CFE372';
const coinAPI = 'https://rest.coinapi.io/v1/exchangerate';

class CoinData {
  Future getData({@required String crypto, @required String currency}) async {
    http.Response response =
        await http.get('$coinAPI/$crypto/$currency?apikey=$api_key2');

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else
      print(response.statusCode);
  }
}

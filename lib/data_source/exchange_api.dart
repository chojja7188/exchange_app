import 'dart:convert';

import 'package:exchage_app2/model/exchange.dart';
import 'package:http/http.dart' as http;

class ExchangeApi {

  Future<Exchange> getExchange() async {
  final response = await http.get(Uri.parse('https://v6.exchangerate-api.com/v6/4f40e381e4bb7b95ab1a0e98/latest/USD'));

  return Exchange.fromJson(jsonDecode(response.body));
  }

  Future<double> getExchangeRate(String base, String target) async {
    final response = await http.get(Uri.parse('https://v6.exchangerate-api.com/v6/4f40e381e4bb7b95ab1a0e98/pair/$base/$target'));

    return jsonDecode(response.body)['conversion_rate'];
  }

}
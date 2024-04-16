import 'package:exchage_app2/model/exchange.dart';

abstract interface class ExchangeRepository {
  Future<Exchange> getExchange();
  Future<double> getExchangeRate(String base, String target);
}
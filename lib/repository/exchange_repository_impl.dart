import 'package:exchage_app2/model/exchange.dart';
import 'package:exchage_app2/repository/exchage_repository.dart';

import '../data_source/exchange_api.dart';

class ExchangeRepositoryImpl implements ExchangeRepository {
  final ExchangeApi _api;

  ExchangeRepositoryImpl({required ExchangeApi api}) : _api = api;

  @override
  Future<Exchange> getExchange() async {
    final response = await _api.getExchange();

    return response;
  }

  @override
  Future<double> getExchangeRate(String base, String target) async {
    final response = await _api.getExchangeRate(base, target);

    return response;
  }

}
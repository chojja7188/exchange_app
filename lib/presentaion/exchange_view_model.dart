import 'package:exchage_app2/model/exchange_rate.dart';
import 'package:exchage_app2/repository/exchange_repository_impl.dart';
import 'package:flutter/cupertino.dart';

class ExchangeViewModel with ChangeNotifier {
  final ExchangeRepositoryImpl _repository;

  ExchangeViewModel({required ExchangeRepositoryImpl repository}) : _repository = repository;

  String lastUpdate = '';
  Map<String, dynamic> conversionRate = {};
  List<ExchangeRate> exchangeRateList = [];
  TextEditingController firstTextController = TextEditingController();
  TextEditingController secondTextController = TextEditingController();
  late ExchangeRate firstDropdownValue;
  late ExchangeRate secondDropdownValue;

  double firstToSecondRate = 0;
  double secondToFirstRate = 0;

  bool initLoading = false;
  bool isLoading = false;

  void fetchData() async {
    initLoading = true;
    notifyListeners();
    final exchange = await _repository.getExchange();
    lastUpdate = exchange.timeLastUpdateUtc;
    conversionRate = exchange.conversionRates;
    conversionRate.forEach((key, value) {
      if (key == 'USD') firstDropdownValue = ExchangeRate(name: key, rate: value);
      if (key == 'KRW') secondDropdownValue = ExchangeRate(name: key, rate: value);
      exchangeRateList.add(ExchangeRate(name: key, rate: value));
    });

    firstToSecondRate = await _repository.getExchangeRate('KRW', 'USD');
    secondToFirstRate = await _repository.getExchangeRate('USD', 'KRW');
    initLoading = false;
    notifyListeners();
  }

  void changeFirstValue() {
    if (firstTextController.text.isEmpty) {
      secondTextController.text = '';
    } else {
      secondTextController.text = (double.parse(firstTextController.text) * secondToFirstRate).toStringAsFixed(4);
    }
      notifyListeners();
    }

  void changeSecondValue() {
    if (secondTextController.text == '') {
      firstTextController.text = '';
    } else {
      firstTextController.text = (double.parse(secondTextController.text) * firstToSecondRate).toStringAsFixed(4);
    }
      notifyListeners();
  }

  void changeFirstDropdownMenu(ExchangeRate value) async {
    firstDropdownValue = value;
    isLoading = true;
    notifyListeners();
    firstToSecondRate = await _repository.getExchangeRate(secondDropdownValue.name, firstDropdownValue.name);
    secondToFirstRate = await _repository.getExchangeRate(firstDropdownValue.name, secondDropdownValue.name);
    changeFirstValue();
    isLoading = false;
    notifyListeners();
  }

  void changeSecondDropdownMenu(ExchangeRate value) async {
    secondDropdownValue = value;
    isLoading = true;
    notifyListeners();
    firstToSecondRate = await _repository.getExchangeRate(secondDropdownValue.name, firstDropdownValue.name);
    secondToFirstRate = await _repository.getExchangeRate(firstDropdownValue.name, secondDropdownValue.name);
    changeSecondValue();
    isLoading = false;
    notifyListeners();
  }

}
import 'package:exchage_app2/model/exchange_rate.dart';
import 'package:exchage_app2/presentaion/exchange_view_model.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class ExchangeMainScreen extends StatefulWidget {
  const ExchangeMainScreen({super.key});

  @override
  State<ExchangeMainScreen> createState() => _ExchangeMainScreenState();
}

class _ExchangeMainScreenState extends State<ExchangeMainScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => context.read<ExchangeViewModel>().fetchData());
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ExchangeViewModel>();

    return Scaffold(
        body: Container(
          padding: EdgeInsets.all(16),
          color: Color(0xff1f2125),
          child: viewModel.initLoading ? Center(child: CircularProgressIndicator()) : Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 80.0),
                  Text('1 ${viewModel.firstDropdownValue.name} =', style: TextStyle(color: Color(0xff9aa0a6), fontSize: 20)),
                  SizedBox(height: 4),
                  Text('${viewModel.firstToSecondRate} ${viewModel.secondDropdownValue.name}',
                    style: TextStyle(color: Colors.white, fontSize: 36),),
                  SizedBox(height: 16),
                  Text('${viewModel.lastUpdate}', style: TextStyle(color: Color(0xff9aa0a6)),),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(
                        width: 260,
                        child: TextField(
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
                          ],
                          onTapOutside: (event) => FocusScope.of(context).unfocus(),
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Color(0xffbdc1c7), fontSize: 17),
                          controller: viewModel.firstTextController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)
                            ),
                          ),
                          onChanged: (value) {
                            viewModel.changeFirstValue();
                          },
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff5f6369)),
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: DropdownButton(
                            underline: Container(),
                            dropdownColor: Color(0xff1f2125),
                            style: TextStyle(color: Color(0xffbdc1c7), fontSize: 18),
                            value: viewModel.firstDropdownValue,
                            onChanged: (value) {
                              viewModel.changeFirstDropdownMenu(value!);
                            },
                              items: viewModel.exchangeRateList.map<DropdownMenuItem<ExchangeRate>>((value) {
                                return DropdownMenuItem<ExchangeRate>(
                                  value: value,
                                  child: Text(value.name),
                                );
                              }).toList()
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      SizedBox(
                        width: 260,
                        child: TextField(
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
                          ],
                          onTapOutside: (event) => FocusScope.of(context).unfocus(),
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Color(0xffbdc1c7), fontSize: 17),
                          controller: viewModel.secondTextController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)
                              )
                          ),
                          onChanged: (value) {
                            viewModel.changeSecondValue();
                          },
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff5f6369)),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: DropdownButton(
                              underline: Container(),
                            dropdownColor: Color(0xff1f2125),
                            style: TextStyle(color: Color(0xffbdc1c7), fontSize: 18),
                              value: viewModel.secondDropdownValue,
                              onChanged: (value) {
                                viewModel.changeSecondDropdownMenu(value!);
                              },
                              items: viewModel.exchangeRateList.map<DropdownMenuItem<ExchangeRate>>((value) {
                                return DropdownMenuItem<ExchangeRate>(
                                  value: value,
                                  child: Text(value.name),
                                );
                              }).toList()
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Positioned.fill(
                child: viewModel.isLoading ? Center(child: CircularProgressIndicator()) : Container(),
              )
            ],
          ),
        ));
  }
}

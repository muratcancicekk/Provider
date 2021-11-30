import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerproje/model/counter_with_provider.dart';
import 'package:providerproje/view/firstPage/body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Counter>(
      create: (_) => Counter(0),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Body(),
      ),
    );
  }
}

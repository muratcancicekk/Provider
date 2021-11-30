import 'package:flutter/material.dart';
import 'package:providerproje/model/counter_with_provider.dart';
import 'package:providerproje/view/secondPage/second_body.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.watch<Counter>().counter.toString()),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              child: Text("go to second page"),
            )
          ],
        ),
      ),
    );
  }
}

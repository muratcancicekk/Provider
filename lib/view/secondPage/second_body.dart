import 'package:flutter/material.dart';
import 'package:providerproje/model/counter_with_provider.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              textWidget(),
              increase(),
              decrease(),
              NewWidget(),
            ],
          ),
        ));
  }
}

class textWidget extends StatelessWidget {
  const textWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("text");
    return Text(context.watch<Counter>().counter.toString());
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("float");
    return FloatingActionButton(onPressed: () {});
  }
}

class decrease extends StatelessWidget {
  const decrease({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("decrease");
    return ElevatedButton(
        onPressed: () {
          context.read<Counter>().decrease();
        },
        child: Text("decrease"));
  }
}

class increase extends StatelessWidget {
  const increase({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("increase");
    return ElevatedButton(
        onPressed: () {
          context.read<Counter>().increase();
        },
        child: Text("increase"));
  }
}

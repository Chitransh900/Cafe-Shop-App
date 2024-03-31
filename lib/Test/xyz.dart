import 'package:cafe_shop/Test/abc2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'abc.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("object");
    return MaterialApp(
      title: 'Flutter Provider Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Provider Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Consumer<Counter>(
                builder: (context, counter, child) {
                  print("abc");
                  return Text(
                    'Count: ${counter.count}',
                    style: Theme.of(context).textTheme.headline4,
                  );
                },
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      Provider.of<Counter>(context, listen: false).increment();
                    },
                    child: Text('Increment'),
                  ),
                  SizedBox(width: 16),
                  TextButton(
                    onPressed: () {
                      Provider.of<Counter2>(context, listen: false).decrement();
                    },
                    child: Text('Decrement'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
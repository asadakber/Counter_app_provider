import 'package:count_app/provider/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Consumer<Counter>(
                builder: (BuildContext context, Counter value, Widget child) => (
                  Text(
                    '${value.counter}',
                    style: Theme.of(context).textTheme.display1,
                  )
                ),
            ),
            RaisedButton(
                onPressed: counter.Increment,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.add, color: Colors.white,),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    child: Text('increment', style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),),
                  )
                ],
              ),
            ),
            RaisedButton(
              onPressed: counter.decrement,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.remove, color: Colors.white,),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    child: Text('Decrement', style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

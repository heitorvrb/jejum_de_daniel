import 'package:flutter/material.dart';
import 'package:jejum_de_daniel/dia.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jejum de Daniel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Jejum de Daniel'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _startDate = new DateTime.now();

  Future _selectStartDate() async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2016), //TODO: Não precisa de um intervalo tão grande entre datas
        lastDate: new DateTime(2020)   //Todo: Fazer um intervalo dinâmico entre datas
    );
    if(picked != null) setState(() {
      _startDate = picked;
      _pray();
    });
  }

  void _pray() {
    List<Widget> dias = [Dia(1), Dia(2), Dia(3)];

    Navigator.of(context).push(
        new MaterialPageRoute<void>(
            builder: (BuildContext context) {
              return PageView.builder(
                itemCount: 21, //TODO: keep const?
                itemBuilder: (BuildContext context, int index) => dias[index],
              );
            }
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: _pray,
              child: Text("Iniciar Jejum de Daniel"),
            ),
            RaisedButton(
              onPressed: _selectStartDate,
              child: Text("Iniciar de uma data específica"),
            )
          ],
        ),
      ),
    );
  }
}

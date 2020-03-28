import 'package:flutter/material.dart';
import 'models/item.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );

  }
}

  class HomePage extends StatefulWidget {
    var items = new List<Item>();

    HomePage(){
      items = [];
      items.add(Item(title: "Banana", done: false));
      items.add(Item(title: "Abacate", done: true));
      items.add(Item(title: "Laranja", done: false));
    }
    @override
    _HomePageState createState() => _HomePageState();
  }

class _HomePageState extends State<HomePage> {
  var newTaskCtrl = TextEditingController();

  void add(){
    if(newTaskCtrl.text.isEmpty) return;
    
    setState(() {
      widget.items.add(
        Item(
          title: newTaskCtrl.text,
          done: false
        ),
      );
      newTaskCtrl.text = "";
    });
  }

  void remove(int index){
    setState(() {
      widget.items.removeAt(index);
    });
  }

  Future load() async {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          decoration: InputDecoration(
            labelText: "Nova Tarefa",
            labelStyle: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (BuildContext ctxt, int index){
          final item = widget.items[index];
          return Dismissible(
              child: CheckboxListTile(
                title: Text(item.title),
                key: Key(item.title),
                value: item.done,
                onChanged: (value) {
                  setState(() {
                    item.done = value;
                  });
                },
              ),
              key: Key(item.title),
              background: Container(
                //color: Colors.red,
                color: Colors.red.withOpacity(0.2),
                //child: Text("Excluir"),
              ),
            onDismissed: (direction){
                remove(index);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: add,
        child: Icon(
          Icons.thumb_up,
          color: Colors.lightBlue,
          size: 100.0,
        ),
        backgroundColor: Colors.pink,
      ),
    );
  }
}


import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Home(),
));


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Professor Braille'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
//**********USING CENTER
//      body: Center(
//        child: Text('Texto Exemplo'),
//        child: Image(
//          //image: NetworkImage("https://66.media.tumblr.com/cac013931c654f7edd3d787d771ed11d/tumblr_pkwwu8xyvd1tbym8o_1280.jpg"),
//          //image: AssetImage('assets/papelDeParede.jpg'),
//        ),
//        child: Image.asset('assets/papelDeParede.jpg'),
//        child: Icon(
//          Icons.thumb_up,
//          color: Colors.lightBlue,
//          size: 100.0,
//        ),
//        child: RaisedButton(
//          onPressed: (){
//            print('you clicked me');
//          },
//          child: Text('Click me'),
//          color: Colors.red,
//        ),
//        child: RaisedButton.icon(
//          onPressed: (){
//            print('you clicked me');
//          },
//          icon: Icon(
//            Icons.mail
//          ),
//          label: Text('mail me'),
//          color: Colors.amber,
//        ),
//        child: IconButton(
//          onPressed: () {
//            print('you clicked me');
//          },
//          icon: Icon(
//              Icons.alternate_email,
//              size: 50.0,
//          ),
//          color: Colors.amber,
//        ),
//      ),
//**********USING CONTAINER
//      body: Container(
//        //padding: EdgeInsets.all(20.0),
//        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
//        //padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
//        margin: EdgeInsets.all(30.0),
//        color: Colors.grey,
//        child: Text('hello'),
//      ),
//**********USING PADDING
//      body: Padding(
//        padding: EdgeInsets.all(90.0),
//        child: Text('hello'),
//      ),
//**********USING ROW
//      body: Row(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,//alinhamento horizontal
//        crossAxisAlignment: CrossAxisAlignment.start,//alinhamento vertical
//        children: <Widget>[
//          Text('Hello, world'),
//          FlatButton(
//            onPressed: (){},
//            color: Colors.amber,
//            child: Text('click me'),
//          ),
//          FlatButton(
//            onPressed: (){},
//            color: Colors.green,
//            child: Text('aperte aqui'),
//          ),
//          Container(
//            color: Colors.cyan,
//            padding: EdgeInsets.all(30.0),
//            child: Text('inside container'),
//          ),
//        ],
//      ),
//USING COLUMN
//      body: Column(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        //crossAxisAlignment: CrossAxisAlignment.center,
//        children: <Widget>[
//          Container(
//            padding: EdgeInsets.symmetric(horizontal: 38.0, vertical: 10),
//            color: Colors.red,
//            //margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
//            child: Text('Letters'),
//          ),
//          Container(
//              padding: EdgeInsets.symmetric(horizontal: 31.0, vertical: 10),
//              color: Colors.amber,
//              //margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
//              child: Text('Numbers'),
//          ),
//          Container(
//              padding: EdgeInsets.symmetric(horizontal: 8.5, vertical: 10),
//              //margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
//              color: Colors.green,
//              child: Text('Special Symbols'),
//          ),
//        ],
//      ),
//**********USING COLUMN AND ROW
//      body: Container(
//        child: Column(
//          children: <Widget>[
//            Row(//linha 1
//              mainAxisAlignment: MainAxisAlignment.spaceEvenly,//alinhamento horizontal
//              crossAxisAlignment: CrossAxisAlignment.center,//alinhamento vertical
//              children: <Widget>[
//                FlatButton(
//                  onPressed: (){},
//                  color: Colors.blue,
//                  padding: EdgeInsets.all(10.0),
//                  child: Text('Letters'),
//                ),
//                FlatButton(
//                  onPressed: (){},
//                  color: Colors.amber,
//                  padding: EdgeInsets.all(10.0),
//                  child: Text('Numbers'),
//                ),
//                FlatButton(
//                  onPressed: (){},
//                  color: Colors.lightGreen,
//                  padding: EdgeInsets.all(10.0),
//                  child: Text('Special Symbols'),
//                ),
//              ],
//            ),
//            Row(//linha 2
//              mainAxisAlignment: MainAxisAlignment.spaceEvenly,//alinhamento horizontal
//              crossAxisAlignment: CrossAxisAlignment.center,//alinhamento vertical
//              children: <Widget>[
//                Padding(
//                  padding: const EdgeInsets.all(30.0),
//                  child: Text(
//                    '',
//                  ),
//                ),
//              ],
//            ),
//            Row(//linha 3
//              mainAxisAlignment: MainAxisAlignment.spaceEvenly,//alinhamento horizontal
//              crossAxisAlignment: CrossAxisAlignment.center,//alinhamento vertical
//              children: <Widget>[
//                Text(
//                  'CHARACTERE',
//                ),
//              ],
//            ),
//          ],
//        ),
//      ),
      body: Row(
        children: <Widget>[
          Expanded(
              child: Image.asset('assets/papelDeParede.jpg'),
              flex: 2,
          ),
          Expanded(
            flex: 4,//altera a largura
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 4,//altera a largura
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pinkAccent,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 4,//altera a largura
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amber,
              child: Text('3'),
            ),
          ),
        ],
      ),


//      floatingActionButton: FloatingActionButton.extended(
//        onPressed: () {},
//        label: Text('click_aqui'),
//        icon: Icon(
//          Icons.thumb_up,
//          color: Colors.white,
//          size: 40.0,
//        ),
//        backgroundColor: Colors.red[600],
//      ),
    );
  }
}


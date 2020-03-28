import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  static int counter=0;

  List<WorldTime> locations = [
    //Dados de tempo europeus
    WorldTime(url: 'http://worldclockapi.com/api/json/est/now', location: 'London', flag: 'london.jpg'),
    //dados de tempo americanos
    WorldTime(url: 'http://worldclockapi.com/api/json/est/now', location: 'Brazil', flag: 'brazil.jpg'),
    WorldTime(url: 'http://worldclockapi.com/api/json/est/now', location: 'USA', flag: 'usa.jpg'),
  ];

  void  updateTime(index) async{
    WorldTime instance = locations[index];
    await instance.getTime();
    //navigate to home scren
    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime,
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build function run');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical:1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: (){
                  //print(locations[index].location);
                  updateTime(index);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; //location name for the UI
  String time; //the time in that location
  String flag; //url to an asset flag icon
  String url; //location url for api endpoint
  bool isDaytime;//true or false is daytime or not

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    //async resolve problemas de sincronia em atrasos de acessos a dados de uma rede por exemplo
    //simulate network request for a username
    //await - é inerente a async e serve para aguardar a atribuição do dado para prosseguir a execução
//    String username = await Future.delayed(Duration(seconds: 3), (){//Função que provoca um delay para a execução do seu conteúdo
//      return 'yoshi';
//    });
//
//    //simulate network request for a username
//    String bio = await Future.delayed(Duration(seconds: 2), (){//Função que provoca um delay para a execução do seu conteúdo
//      return 'vega musician & egg collector';
//    });
//
//    print('$username - $bio');

    //o comando await antes do get resguarda o tempo de carregamento do conteudo obtido no endereço https para a continuação da execução do software
//    Response response = await get(
//        'https://jsonplaceholder.typicode.com/todos/1'); //recebendo um json via https
//    Map data = jsonDecode(response.body);
//    print(data);
//    print(data['title']);

    try {
      //Obtendo api com data e hora local e formatando para o padrão correte
      Response response = await get('$url');
      Map data = jsonDecode(response.body);
      print(data);
      String datetime = data['currentDateTime'];
      String offset = data['utcOffset'].substring(1, 3);
      //print(datetime);
      DateTime now = DateTime.parse(datetime);
      if(this.location == 'Brazil') {
        now = now.subtract(Duration(hours: int.parse(offset)));//horário sem correção
        now = now.add(Duration(hours: 1)); //correção para horário de verão
      }
      if(this.location == 'London'){
        now = now.subtract(Duration(hours: int.parse(offset)));//horario sem coreção
        now = now.add(Duration(hours: 4)); //correção para horário de verão
      }
      if(this.location == 'USA'){
        now = now.subtract(Duration(hours: int.parse(offset)));//horário sem correção
      }

      //set the Time propriety
      //time = now.toString();
      isDaytime = now.hour > 6 && now.hour < 19 ? true : false;
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('caugth error: $e');
      time = 'could not get time data';
    }
  }
}

import 'package:flutter/material.dart';
import 'package:testedb/screens/home/home.dart';
import 'package:testedb/screens/authenticate/authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //retun either Home or Authenticate widget
    return Authenticate();
  }
}

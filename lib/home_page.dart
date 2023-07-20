import 'package:flutter/material.dart';
import 'package:smart_change/screens/Tab%20bar%20screen/login_page.dart';
//import 'package:smart_change/screens/Tab%20bar%20screen/forgot_password.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //print('Current height is ' + MediaQuery.of(context).size.height.toString());
    return const LoginPage();
  }
}

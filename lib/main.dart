import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void getRequest() async {
    //Url
    var url = Uri.parse("https://reqres.in/api/users");
    var response = await http.get(url);
    print(response.body.toString());
  }

  void postRequest() async {
    var url = Uri.parse("https://reqres.in/api/login");
    var data = {"email": "eve.holt@reqres.in", "password": "cityslicka"};
    var response = await http.post(url, body: data);
    print(response.body.toString());
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getRequest();
    postRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container()),
    );
  }
}

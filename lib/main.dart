import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

//phone
phonlaunch() async {
  await launch("tel:+911234567890");
}

//sms
smslaunch() async {
  await launch("sms:+911234567890");
}

//email
emaillaunch() async {
  await launch("mailto:flutter@gmail.com");
}

//browseruRl
urllauncher() async {
  await launch("https://flutter.dev");
}

//second way
// final Uri _url = Uri.parse('https://flutter.dev');
// void _launchUrl() async {
//   if (!await launch('$_url')) throw 'Could not launch $_url';
// }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('URl Lunchar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: phonlaunch, child: Text('Call')),
            ElevatedButton(onPressed: smslaunch, child: Text('Sms')),
            ElevatedButton(onPressed: emaillaunch, child: Text('Email')),
            ElevatedButton(
                onPressed: urllauncher, child: Text('open browser Url')),
          ],
        ),
      ),
    );
  }
}

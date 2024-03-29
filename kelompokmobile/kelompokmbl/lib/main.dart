import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kelompokmbl/provider/aboutus_provider.dart';
// import 'package:kelompokmbl/provider/faq_provider.dart';
import 'package:kelompokmbl/provider/homescreen_provider.dart';
import 'package:kelompokmbl/provider/listfuture.dart';
import 'package:kelompokmbl/provider/medicalrecord_provider.dart';
import 'package:kelompokmbl/provider/messageprov.dart';
import 'package:kelompokmbl/provider/notif_provider.dart';
import 'package:kelompokmbl/provider/pastappoint.dart';
import 'package:kelompokmbl/provider/step1prov.dart';
import 'package:kelompokmbl/screen/aboutus_screen.dart';
import 'package:kelompokmbl/screen/welcomescreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return ValueListenableBuilder<ThemeMode>(
    //   valueListenable: themeNotifier,
    //   builder: (_, ThemeMode currentMode, __) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeScreenProvider()),
        ChangeNotifierProvider(create: (_) => ListFutureScreen()),
        ChangeNotifierProvider(create: (_) => PastAppoint()),
        ChangeNotifierProvider(create: (_) => Step1Provider()),
        ChangeNotifierProvider(create: (_) => MedicalProvider()),
        // ChangeNotifierProvider(create: (_) => FAQScreen()),
        ChangeNotifierProvider(create: (_) => NotificatioProvider()),
        ChangeNotifierProvider(create: (_) => AboutUsProvider()),
        ChangeNotifierProvider(create: (_) => MessageProvider()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.system,
        home: const WelcomeScreen(),
      ),
    );
  }
}
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

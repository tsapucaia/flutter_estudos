import 'package:flutter/material.dart';
import 'package:flutter_mobx_connectivity/screens/connectivity_screen.dart';
import 'package:flutter_mobx_connectivity/stores/connectivity_store.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ConnectivityStore>(
          create: (_) => ConnectivityStore(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ConnectivityScreen(new ConnectivityStore()),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:despesas_app/services/authentication.dart';
import 'package:despesas_app/pages/root_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter login demo',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new RootPage(auth: new Auth()),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('pt'), // English
          const Locale('es'), // Spanish
          const Locale('fr'), // French
          const Locale('zh'), // Chinese
          ],
        );
  }
}

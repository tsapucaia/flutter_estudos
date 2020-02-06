import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/app_controller.dart';
import 'package:flutter_modular_example/app/app_widget.dart';
import 'package:flutter_modular_example/app/pages/home/home_controller.dart';
import 'package:flutter_modular_example/app/pages/home/home_page.dart';
import 'package:flutter_modular_example/app/pages/other/other_page.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
    Bind((i) => AppController()),
    Bind((i) => HomeController()),
  ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/other', child: (_, args) => OtherPage()),
      ];

  @override
  Widget get bootstrap => AppWidget();
}

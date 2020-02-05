import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx_connectivity/stores/connectivity_store.dart';
import 'package:mobx/mobx.dart';

class ConnectivityScreen extends StatefulWidget {
  const ConnectivityScreen(this.store, {Key key}) : super(key: key);

  final ConnectivityStore store;

  @override
  _ConnectivityScreenState createState() => _ConnectivityScreenState();
}

class _ConnectivityScreenState extends State<ConnectivityScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  ReactionDisposer _disposer;
  @override
  void initState() {
    super.initState();
    // a delay is used to avoid showing the snackbar too much when the connection drops in and out repeatedly
    _disposer = reaction(
        (_) => widget.store.connectivityStream.value,
        (result) => _scaffoldKey.currentState.showSnackBar(
              SnackBar(
                content: Text(result == ConnectivityResult.none
                    ? 'Você está offline'
                    : 'Você está online'),
              ),
            ),
        delay: 4000);
  }

  @override
  void dispose() {
    _disposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
              'Demora aproximadamente 4 segundos para reconhecer a alteração do status da conexão.'),
        ),
      );
}

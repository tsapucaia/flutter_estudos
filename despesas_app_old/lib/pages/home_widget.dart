
import 'package:despesas_app/pages/events/placeholder_event_widget.dart';
import 'package:despesas_app/pages/family/form_family_widget.dart';
import 'package:despesas_app/pages/family/placeholder_family_widget.dart';
import 'package:despesas_app/util/util.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = navigationItem.families.index;
  final List<Widget> _children = [
    PlaceholderFamilyWidget(),
    PlaceholderEventWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rateio de Despesas'),
      ),
      floatingActionButton: Container(
        child: new FloatingActionButton(
          child: new Icon(Icons.add),
          onPressed: () {
            onAddPressed();
          },
        ),
      ),
      body: _children[
        _currentIndex
      ],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('Familias'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_invitation),
            title: Text('Eventos'),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      print(_children[_currentIndex]);
    }); 
  }

  void onAddPressed(){
    if(this._currentIndex == navigationItem.families.index){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FormFamily()
        ),
      );
    }else if(this._currentIndex == navigationItem.events.index){
      print("Eventos Pressionado");
    }
  }
}
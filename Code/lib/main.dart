import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MuscleFlow',
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 0, 0, 0),
          fontFamily: 'InraSans'),
      home: const MyHomePage(title: 'MuscleFlow'),
    );
  }

  

}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? dropdownvalue = 'Full body';

  var items = [
    'Full body',
    'Push/pull Leg',
    'Chest',
    'Back',
    'Cardio',
  ];
  final myController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/images/logo_horizontal.png',
                fit: BoxFit.contain,
                height: 45,
              ),
            ],
          ),
          leadingWidth: 300,
          backgroundColor: Color.fromARGB(255, 29, 29, 29),
          actions: [
            Icon(Icons.more_horiz),
          ],
          actionsIconTheme: IconThemeData(
            color: Color.fromARGB(255, 152, 152, 152),
            size: 30,
          ),
          toolbarHeight: 65,
        ),
        body: Stack(
          children: <Widget>[
            Positioned(
                left: 18.0,
                top: 13.0,
                child: Container(
                  width: 300.0,
                  height: 80.0,
                  child: Text('New training',
                      style: TextStyle(
                          fontFamily: 'InriaSans',
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20)),
                )),



              
              Positioned( //Container NAME
                left: MediaQuery.of(context).size.width * 0.05,
                top: MediaQuery.of(context).size.height * 0.10, 
                child:Stack(children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.10,
                    decoration: BoxDecoration(color: Color.fromARGB(255, 61, 60, 60), borderRadius: BorderRadius.circular(17)),
                    child: Container( //containeur du texte
                      //margin: const EdgeInsets.only(left:0.5, top: 15),
                      width: double.infinity,
                      padding: EdgeInsets.all(25), //You can use EdgeInsets like above
                      child: Text('Name',          
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'InriaSans',
                            color: Color.fromARGB(255, 130, 129, 129),
                            fontSize: 20)),
                    )
                  ), 
                  //zone de texte name
                  Container(              
                    width: 300,
                    padding: EdgeInsets.fromLTRB(120, 15, 0, 0),
                    child: TextField(
                      controller: myController,
                      style: TextStyle(
                            fontFamily: 'InriaSans',
                            color: Color.fromARGB(255, 130, 129, 129),
                            fontSize: 20),
                      decoration: InputDecoration(
                        //border: OutlineInputBorder(),
                      
                      hintText: 'Enter a name',
                      ),
                    )
                  )
                                      
                  
                ]),
              ),
                

              Positioned( //Container Type
              left: MediaQuery.of(context).size.width * 0.05,
              top: MediaQuery.of(context).size.height * 0.23,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.10,
                decoration: BoxDecoration(color: Color.fromARGB(255, 61, 60, 60), borderRadius: BorderRadius.circular(17)),
                child: Container( //containeur du texte
                  width: double.infinity,
                  padding: EdgeInsets.all(25), //You can use EdgeInsets like above
                  child: Text('Type',          
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'InriaSans',
                        color: Color.fromARGB(255, 130, 129, 129),
                        fontSize: 20)),
                  
                ),
                
              )),

                //Menu déroulant
                Positioned(
                left: MediaQuery.of(context).size.width * 0.35,
                top: MediaQuery.of(context).size.height * 0.25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropdownButton(
                      value: dropdownvalue,
                      icon: Icon(Icons.keyboard_arrow_down),
                      items: items.map((items) {
                        return DropdownMenuItem(value: items, 
                        child: Text(
                          items,
                          style: TextStyle(
                          fontFamily: 'InriaSans',
                          color: Color.fromARGB(255, 130, 129, 129),
                          fontSize: 20)
                        ));
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                        dropdownvalue = newValue;
                        });
                      },
                    ),
                  ],
                ),
                  
                )
                


          ],
        ));
  }

  //Bouton arrondis
  @override
  Widget buildbutton(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
 
          Container(
          height: 150.0,
          width: 300.0,
          color: Color.fromARGB(0, 173, 38, 38),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: new Center(
              child: new Text("Rounded Corner Rectangle Shape", 
              style: TextStyle(color: Colors.white, fontSize: 22),
              textAlign: TextAlign.center,),
            )),
        ),
 
        Container(
          height: 150.0,
          width: 150.0,
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: new Center(
              child: new Text("Rounded Corner Square Shape",
              style: TextStyle(fontSize: 22, color: Colors.white), 
                textAlign: TextAlign.center,),
            )),
        ),
        ],)
      )
     )
   );
  }

}




import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final Future<Database> database = openDatabase(
    join(
      await getDatabasesPath(),
      'muscleFlow.db',
    ),
    onCreate: (db, version) {
      db.execute(
          'CREATE TABLE all_trainings(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, type INTEGER, nbexo INTEGER, date DATE);');
      db.execute(
          'CREATE TABLE exercises(idex INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, type INTEGER, img TEXT);');
      db.execute(
          'CREATE TABLE asso(id INTEGER, idex INTEGER, series INTEGER, reps INTEGER, kg INTEGER);');
      db.execute(
          'CREATE TABLE temporary_exercises(id INTEGER PRIMARY KEY AUTOINCREMENT, idex INTEGER, series INTEGER, reps INTEGER, kg INTEGER)');
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (1,'Dips Two Benches','Arms','Dips Two Benches.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (2,'Kick back','Arms','Kick back.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (3,'Two hand Vertical Extension','Arms','Two hand Vertical Extension.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (4,'Bar Vertical Extension','Arms','Bar Vertical Extension.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (5,'Sit pulley Extension','Arms','Sit Poulie Extension.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (6,'Unilateral pulley Extension','Arms','Unilateral Poulie Extension.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (7,'pulley Extension supination','Arms','Poulie Extension supination.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (8,'String Horizontal Extension','Arms','String Horizontal Extension.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (9,'pulley Extension','Arms','Poulie Extension.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (10,'Rotate Curl','Arms','Rotate Curl.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (11,'Hammer Curl','Arms','Hammer Curl.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (12,'Hammer Curl Pupitre','Arms','Hammer Curl Pupitre.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (13,'Hammer Curk Bench','Arms','Hammer Curk Bench.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (14,'unilateral thigh press','Leg','unilateral thigh press.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (15,'Leg Extension','Leg','Leg Extension.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (16,'Hack Squat','Leg','Hack Squat.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (17,'Calf Press','Leg','Calf Press.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (18,'Bar Calf Extension','Leg','Bar Calf Extension.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (19,'Bench','Chest','Bench.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (20,'Bench Press Dumbbells','Chest','Bench Press Dumbbells.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (21,'incline press','Chest','incline press.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (22,'Push-up','Chest','push-up.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (23,'Deadlift','Back','Deadlift.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (24,'Traction suplination hand','Back','Traction suplination hand.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (25,'Traction','Back','Traction.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (26,'Vertical Pull','Back','Bent-Over.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (27,'Tight Grip Vertical Pull','Back','Tight Grip Vertical Pull.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (28,'Supine Vertical Draw','Back','Supine Vertical Draw.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (29,'One-Sided Vertical Draft','Back','One-Sided Vertical Draft.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (30,'Neck Press','Shoulders','Neck Press.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (31,'Dumbbell Press','Shoulders','Dumbbell Press.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (32,'Arnold Developed','Shoulders','Arnold Developed.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (33,'Machine Shoulder Press','Shoulders','Machine Shoulder Press.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (34,'Lying Lateral Raise','Shoulders','Lying Lateral Raise.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (35,'Low Pulley Lateral Raises','Shoulders','Low Pulley Lateral Raises.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (36,'Machine Lateral Raises','Shoulders','Machine Lateral Raises.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (37,'Dips Two Benches','Full body','Dips Two Benches.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (38,'Kick back','Full body','Kick back.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (39,'Two hand Vertical Extension','Full body','Two hand Vertical Extension.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (40,'Bar Vertical Extension','Full body','Bar Vertical Extension.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (41,'Sit pulley Extension','Full body','Sit Poulie Extension.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (42,'Unilateral pulley Extension','Full body','Unilateral Poulie Extension.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (43,'pulley Extension supination','Full body','Poulie Extension supination.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (44,'String Horizontal Extension','Full body','String Horizontal Extension.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (45,'pulley Extension','Full body','Poulie Extension.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (46,'Rotate Curl','Full body','Rotate Curl.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (47,'Hammer Curl','Full body','Hammer Curl.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (48,'Hammer Curl Pupitre','Full body','Hammer Curl Pupitre.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (49,'Hammer Curk Bench','Full body','Hammer Curk Bench.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (50,'unilateral thigh press','Full body','unilateral thigh press.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (51,'Leg Extension','Full body','Leg Extension.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (52,'Hack Squat','Full body','Hack Squat.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (53,'Calf Press','Full body','Calf Press.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (54,'Bar Calf Extension','Full body','Bar Calf Extension.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (55,'Bench','Full body','Bench.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (56,'Bench Press Dumbbells','Full body','Bench Press Dumbbells.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (57,'incline press','Full body','incline press.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (58,'Push-up','Full body','push-up.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (59,'Deadlift','Full body','Deadlift.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (60,'Traction suplination hand','Full body','Traction suplination hand.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (61,'Traction','Full body','Traction.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (62,'Vertical Pull','Full body','Bent-Over.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (63,'Tight Grip Vertical Pull','Full body','Tight Grip Vertical Pull.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (64,'Supine Vertical Draw','Full body','Supine Vertical Draw.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (65,'One-Sided Vertical Draft','Full body','One-Sided Vertical Draft.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (66,'Neck Press','Full body','Neck Press.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (67,'Dumbbell Press','Full body','Dumbbell Press.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (68,'Arnold Developed','Full body','Arnold Developed.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (69,'Machine Shoulder Press','Full body','Machine Shoulder Press.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (70,'Lying Lateral Raise','Full body','Lying Lateral Raise.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (71,'Low Pulley Lateral Raises','Full body','Low Pulley Lateral Raises.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (72,'Machine Lateral Raises','Full body','Machine Lateral Raises.jpg');");
      db.execute(
          "INSERT INTO exercises(idex,name,type,img) VALUES (73,'Run','Cardio','Run.jpg');");
    },
    version: 1,
  );

  runApp(MyApp(database: database));
}

class MyApp extends StatelessWidget {
  final Future<Database> database;

  const MyApp({Key? key, required this.database}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MuscleFlow',
        theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
            fontFamily: 'InraSans'),
        home: MyHomePage(title: 'MuscleFlow', database: database));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title, required this.database})
      : super(key: key);
  final String title;
  final Future<Database> database;

  @override
  State<MyHomePage> createState() => _MyHomePageState(database: database);
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState({Key? key, required this.database});
  final Future<Database> database;

  Future<void> delTraining(int id) async {
    final db = await database;
    await db.execute(
      'DELETE FROM all_trainings WHERE id = ' + id.toString(),
    );
    await db.execute(
      'DELETE FROM sqlite_sequence WHERE name="temporary_exercises";',
    );
  }

  Future<List<Map<String, dynamic>>> selectTraining() async {
    final db = await database;
    List<Map<String, dynamic>> liste_raw =
        await db.rawQuery('SELECT * FROM all_trainings ORDER BY id DESC');
    return liste_raw;
  }

  List listeee = [];
  dynamic result = Stack();

  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/images/logo_horizontal.png',
                fit: BoxFit.contain,
                height: screen_height / 15,
              ),
            ],
          ),
          leadingWidth: 300,
          backgroundColor: const Color.fromARGB(255, 29, 29, 29),
          actions: const [
            Icon(Icons.more_horiz),
          ],
          actionsIconTheme: const IconThemeData(
            color: Color.fromARGB(255, 152, 152, 152),
            size: 30,
          ),
          toolbarHeight: screen_height / 11,
        ),
        body: Stack(
          children: <Widget>[
            Positioned(
                left: screen_width / 20,
                top: screen_height / 40,
                height: 37 * screen_height / 40,
                width: 18 * screen_width / 20,
                child: Stack(children: <Widget>[
                  const Text('Your trainings',
                      style: TextStyle(
                          fontFamily: 'InriaSans',
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20)),
                  Positioned(
                      top: screen_height / 20,
                      child: FutureBuilder(
                        future: selectTraining(),
                        builder: (context, AsyncSnapshot snapshot) {
                          if (!snapshot.hasData) {
                            return const Center(
                                child: CircularProgressIndicator());
                          } else {
                            return SizedBox(
                                width: 18 * screen_width / 20,
                                height: 0.78 * screen_height,
                                child: ListView.builder(
                                    itemCount: snapshot.data.length,
                                    scrollDirection: Axis.vertical,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Align(
                                          child: InkWell(
                                        child: Container(
                                            margin: EdgeInsets.only(
                                                bottom: screen_height / 50),
                                            height: screen_height / 9,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 38, 38, 38),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                  top: screen_height / 38,
                                                  left: screen_width / 28,
                                                  child: LayoutBuilder(builder:
                                                      (context, constraints) {
                                                    if (snapshot.data[index]
                                                            ["type"] ==
                                                        0) {
                                                      return Image.asset(
                                                        'asset/images/logos_trainings/full_body.png',
                                                        height:
                                                            screen_height / 17,
                                                      );
                                                    } else if (snapshot
                                                                .data[index]
                                                            ["type"] ==
                                                        1) {
                                                      return Image.asset(
                                                        'asset/images/logos_trainings/full_body.png',
                                                        height:
                                                            screen_height / 17,
                                                      );
                                                    } else if (snapshot
                                                                .data[index]
                                                            ["type"] ==
                                                        2) {
                                                      return Image.asset(
                                                        'asset/images/logos_trainings/leg.png',
                                                        height:
                                                            screen_height / 17,
                                                      );
                                                    } else if (snapshot
                                                                .data[index]
                                                            ["type"] ==
                                                        3) {
                                                      return Image.asset(
                                                        'asset/images/logos_trainings/chest.png',
                                                        height:
                                                            screen_height / 17,
                                                      );
                                                    } else if (snapshot
                                                                .data[index]
                                                            ["type"] ==
                                                        4) {
                                                      return Image.asset(
                                                        'asset/images/logos_trainings/shoulder.png',
                                                        height:
                                                            screen_height / 17,
                                                      );
                                                    } else if (snapshot
                                                                .data[index]
                                                            ["type"] ==
                                                        5) {
                                                      return Image.asset(
                                                        'asset/images/logos_trainings/back.png',
                                                        height:
                                                            screen_height / 17,
                                                      );
                                                    } else if (snapshot
                                                                .data[index]
                                                            ["type"] ==
                                                        6) {
                                                      return Image.asset(
                                                        'asset/images/logos_trainings/bras.png',
                                                        height:
                                                            screen_height / 17,
                                                      );
                                                    } else if (snapshot
                                                                .data[index]
                                                            ["type"] ==
                                                        7) {
                                                      return Image.asset(
                                                        'asset/images/logos_trainings/cardio.png',
                                                        height:
                                                            screen_height / 17,
                                                      );
                                                    } else {
                                                      return Image.asset(
                                                        'asset/images/logos_trainings/full_body.png',
                                                        height:
                                                            screen_height / 17,
                                                      );
                                                    }
                                                  })),
                                              Positioned(
                                                  top: screen_height / 35,
                                                  left: screen_width / 6,
                                                  child: Text(
                                                    snapshot.data[index]
                                                        ["name"],
                                                    style: const TextStyle(
                                                        fontFamily: 'InriaSans',
                                                        color: Colors.white,
                                                        fontSize: 18),
                                                  )),
                                              Positioned(
                                                  top: 2.1 * screen_height / 35,
                                                  left: 1 + screen_width / 6,
                                                  child: Text(
                                                    snapshot.data[index]
                                                            ["date"] +
                                                        ' / ' +
                                                        snapshot.data[index]
                                                                ["nbexo"]
                                                            .toString() +
                                                        ' elements',
                                                    style: const TextStyle(
                                                        fontFamily: 'InriaSans',
                                                        color: Color.fromARGB(
                                                            255, 132, 132, 132),
                                                        fontSize: 13),
                                                  )),
                                              Positioned(
                                                  top: 0.022 * screen_height,
                                                  left: 0.76 * screen_width,
                                                  child: IconButton(
                                                      iconSize: 28,
                                                      icon: const Icon(
                                                        Icons.delete_outline,
                                                        color: Colors.white,
                                                      ),
                                                      onPressed: () async {
                                                        setState(() {
                                                          delTraining(snapshot
                                                                  .data[index]
                                                              ["id"]);
                                                        });
                                                      }))
                                            ])),
                                        onTap: () async {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Show_training(
                                                          database: database,
                                                          id: snapshot
                                                                  .data[index]
                                                              ["id"])));
                                        },
                                      ));
                                    }));
                          }
                        },
                      ))
                ])),
            Positioned(
              right: screen_width * 0.07,
              bottom: screen_height * 0.025,
              child: FloatingActionButton.extended(
                heroTag: "add",
                onPressed: () async {
                  /*final db = await database;
                  await db.execute('DELETE FROM temporary_exercises');*/
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              New_training(database: database)),
                    );
                  });
                },
                icon: const Icon(Icons.add),
                backgroundColor: const Color.fromARGB(255, 100, 100, 180),
                label: const Text('Add'),
                elevation: 10,
              ),
            ),
          ],
        ));
  }
}

class New_training extends StatelessWidget {
  const New_training({Key? key, required this.database}) : super(key: key);
  final Future<Database> database;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MuscleFlow_NewTraining',
        theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
            fontFamily: 'InraSans'),
        home: NewTrainingPage(
            title: 'MuscleFlow_NewTraining', database: database));
  }
}

class NewTrainingPage extends StatefulWidget {
  const NewTrainingPage({Key? key, required this.title, required this.database})
      : super(key: key);
  final String title;
  final Future<Database> database;

  @override
  State<NewTrainingPage> createState() => _NewTrainingState(database: database);
}

class _NewTrainingState extends State<NewTrainingPage> {
  _NewTrainingState({Key? key, required this.database});
  final Future<Database> database;

  String? dropdownvalue = 'Select a type';
  List<String?> ls_menu_exo = [];

  var items = [
    'Select a type',
    'Full body',
    'Leg',
    'Chest',
    'Shoulders',
    'Back',
    'Arms',
    'Cardio',
    'Other'
  ];

  var maptype = {
    'Select a type': 0,
    'Full body': 1,
    'Leg': 2,
    'Chest': 3,
    'Shoulders': 4,
    'Back': 5,
    'Arms': 6,
    'Cardio': 7,
    'Other': 0,
  };

  var typeID;

  String fullName = '';
  String exoname = '';
  double kg = 0;
  int serie = 0;
  int reps = 0;
  int repos = 0;

  final myController_name = TextEditingController();
  List<TextEditingController> kg_control = [];
  List<TextEditingController> series_control = [];
  List<TextEditingController> reps_control = [];

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController_name.dispose();
    super.dispose();
  }

  Future<List<Map<String, dynamic>>> allExercises(var type) async {
    final db = await database;
    //String typestr = maptype.keys
    //    .firstWhere((k) => maptype[k] == type, orElse: () => "Full body");
    List<Map<String, dynamic>> liste_raw = await db.rawQuery(
        'SELECT idex, name FROM exercises WHERE type="' + type + '";');
    return liste_raw;
  }

  Future<List<DropdownMenuItem<String>>> allExercisesName(var type) async {
    var data = await allExercises(type);
    List items = [];
    items.add("Select an exercise");
    for (var raw in data) {
      items.add(raw["name"]);
    }

    return items.map((items) {
      return DropdownMenuItem(
          value: items.toString(),
          child: Text(items,
              style: const TextStyle(
                  fontFamily: 'InriaSans',
                  color: Color.fromARGB(255, 130, 129, 129),
                  fontSize: 20)));
    }).toList();
  }

  Future<List<Map<String, dynamic>>> selectexercises() async {
    final db = await database;
    List<Map<String, dynamic>> liste_raw = await db
        .rawQuery('SELECT * FROM temporary_exercises NATURAL JOIN exercises');
    return liste_raw;
  }

  Future<void> insertTempoExercice(TempoExercice exo_tempo) async {
    final db = await database;
    await db.insert(
      'temporary_exercises',
      exo_tempo.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> modifyTempoExercice(int id, String column, var info) async {
    final db = await database;
    if (column == "idex") {
      List<Map<String, dynamic>> get_idex = await db.rawQuery(
          'SELECT MAX(idex) AS idex FROM exercises WHERE name="' + info + '";');
      info = get_idex[0]["idex"];
    }

    await db.execute('UPDATE temporary_exercises SET ' +
        column +
        '=' +
        info.toString() +
        ' WHERE id=' +
        id.toString());
  }

  Future<void> delAllTempoExercice() async {
    final db = await database;
    await db.execute(
      'DELETE FROM temporary_exercises;',
    );
    await db.execute(
      'DELETE FROM sqlite_sequence WHERE name="temporary_exercises";',
    );
  }

  Future<void> insertExercice() async {
    final db = await database;
    List<Map<String, dynamic>> liste_raw =
        await db.rawQuery('SELECT * FROM temporary_exercises');
    List<Map<String, dynamic>> liste_max_index =
        await db.rawQuery('SELECT MAX(id) AS max FROM all_trainings');

    int new_index = liste_max_index[0]["max"];

    for (var raw in liste_raw) {
      Asso exo = Asso(
          id: new_index,
          idex: raw["idex"],
          series: raw["series"],
          reps: raw["reps"],
          kg: raw["kg"]);
      await db.insert(
        'asso',
        exo.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  Future<void> insertTraining(String fullName, int typeID, String date) async {
    final db = await database;

    List<Map<String, dynamic>> liste_count_exo =
        await db.rawQuery('SELECT count(*) AS count FROM temporary_exercises');

    AllTrainings training = AllTrainings(
        name: fullName,
        type: typeID,
        nbexo: liste_count_exo[0]["count"],
        date: date);

    await db.insert(
      'all_trainings',
      training.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    insertExercice();
    delAllTempoExercice();
  }

  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/images/logo_horizontal.png',
                fit: BoxFit.contain,
                height: screen_height / 15,
              ),
            ],
          ),
          leadingWidth: 300,
          backgroundColor: const Color.fromARGB(255, 29, 29, 29),
          actions: const [
            Icon(Icons.more_horiz),
          ],
          actionsIconTheme: const IconThemeData(
            color: Color.fromARGB(255, 152, 152, 152),
            size: 30,
          ),
          toolbarHeight: screen_height / 11,
        ),
        body: Stack(children: <Widget>[
          Positioned(
              left: screen_width / 20,
              top: screen_height / 40,
              height: 37 * screen_height / 40,
              width: 18 * screen_width / 20,
              child: Stack(
                children: <Widget>[
                  const Text('New training',
                      style: TextStyle(
                          fontFamily: 'InriaSans',
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20)),
                  Positioned(
                    //Container NAME
                    left: screen_width * 0.0,
                    top: screen_height * 0.05,
                    child: Stack(children: <Widget>[
                      Container(
                          width: screen_width * 0.9,
                          height: screen_height * 0.11,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 61, 60, 60),
                              borderRadius: BorderRadius.circular(17)),
                          child: Container(
                            //containeur du texte
                            //margin: const EdgeInsets.only(left:0.5, top: 15),
                            width: double.infinity,
                            padding: const EdgeInsets.all(
                                25), //You can use EdgeInsets like above
                            child: const Text('Name',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'InriaSans',
                                    color: Color.fromARGB(255, 130, 129, 129),
                                    fontSize: 20)),
                          )),
                      //zone de texte name
                      Container(
                          width: 300,
                          padding: const EdgeInsets.fromLTRB(120, 15, 0, 0),
                          child: TextField(
                            controller: myController_name,
                            style: const TextStyle(
                                fontFamily: 'InriaSans',
                                color: Color.fromARGB(255, 130, 129, 129),
                                fontSize: 20),
                            decoration: const InputDecoration(
                              hintText: 'Enter a name',
                            ),
                            onChanged: (text) {
                              setState(() {
                                fullName = text;
                              });
                            },
                          ))
                    ]),
                  ),
                  Positioned(
                      //Container Type
                      left: screen_width * 0.0,
                      top: screen_height * 0.18,
                      child: Stack(children: <Widget>[
                        Container(
                          width: screen_width * 0.9,
                          height: screen_height * 0.11,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 61, 60, 60),
                              borderRadius: BorderRadius.circular(17)),
                          child: Container(
                            //containeur du texte
                            width: double.infinity,
                            padding: const EdgeInsets.all(
                                25), //You can use EdgeInsets like above
                            child: const Text('Type',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'InriaSans',
                                    color: Color.fromARGB(255, 130, 129, 129),
                                    fontSize: 20)),
                          ),
                        ),

                        //Menu déroulant
                        Positioned(
                          left: screen_width * 0.29,
                          top: screen_height * 0.02,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              DropdownButton(
                                value: dropdownvalue,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: items.map((items) {
                                  return DropdownMenuItem(
                                      value: items,
                                      child: Text(items,
                                          style: const TextStyle(
                                              fontFamily: 'InriaSans',
                                              color: Color.fromARGB(
                                                  255, 130, 129, 129),
                                              fontSize: 20)));
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue = newValue;
                                    typeID = maptype[dropdownvalue];
                                  });
                                },
                              ),
                            ],
                          ),
                        )
                      ])),
                  Positioned(
                    top: screen_height * 0.26,
                    child: SizedBox(
                      width: screen_width,
                      height: screen_height,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                              top: screen_height / 20,
                              child: FutureBuilder(
                                  future: selectexercises(),
                                  builder: (context, AsyncSnapshot snapshot1) {
                                    if (!snapshot1.hasData) {
                                      return const Center(
                                          child: CircularProgressIndicator());
                                    } else {
                                      return SizedBox(
                                          width: 18 * screen_width / 20,
                                          height: 0.44 * screen_height,
                                          child: ListView.builder(
                                              itemCount: snapshot1.data.length,
                                              scrollDirection: Axis.vertical,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return Align(
                                                    child: Stack(
                                                        children: <Widget>[
                                                      Container(
                                                          margin: EdgeInsets.only(
                                                              bottom:
                                                                  screen_height *
                                                                      0.020),
                                                          height:
                                                              screen_height *
                                                                  0.125,
                                                          width:
                                                              double.infinity,
                                                          decoration: BoxDecoration(
                                                              color: const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  40,
                                                                  39,
                                                                  39),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          17)),
                                                          child: Container(
                                                            //containeur du texte
                                                            width: double
                                                                .infinity, //You can use EdgeInsets like above
                                                            child: Stack(
                                                                children: [
                                                                  Positioned(
                                                                      left: screen_width *
                                                                          0.02,
                                                                      top: screen_height *
                                                                          0.018,
                                                                      child: const Text(
                                                                          'Exercise :',
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: TextStyle(
                                                                              fontFamily: 'InriaSans',
                                                                              color: Color.fromARGB(255, 130, 129, 129),
                                                                              fontSize: 20))),
                                                                  //Menu déroulant
                                                                  Positioned(
                                                                      left: screen_width *
                                                                          0.225,
                                                                      top: screen_height *
                                                                          0.00,
                                                                      child: Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            FutureBuilder(
                                                                                future: allExercisesName(dropdownvalue),
                                                                                builder: (context, AsyncSnapshot snapshot2) {
                                                                                  if (!snapshot2.hasData) {
                                                                                    return const Center(child: CircularProgressIndicator());
                                                                                  } else {
                                                                                    return DropdownButton(
                                                                                        value: ls_menu_exo[snapshot1.data[index]["id"] - 1],
                                                                                        icon: const Icon(Icons.keyboard_arrow_down),
                                                                                        items: snapshot2.data,
                                                                                        onChanged: (String? newValue1) {
                                                                                          setState(() {
                                                                                            ls_menu_exo[snapshot1.data[index]["id"] - 1] = newValue1;
                                                                                            modifyTempoExercice(snapshot1.data[index]["id"], "idex", newValue1);
                                                                                          });
                                                                                        });
                                                                                  }
                                                                                }),
                                                                          ])),
                                                                  Positioned(
                                                                      left: screen_width *
                                                                          0.1,
                                                                      bottom:
                                                                          screen_height *
                                                                              0.00,
                                                                      child: Container(
                                                                          width: 35,
                                                                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                          child: TextField(
                                                                            textAlign:
                                                                                TextAlign.left,
                                                                            keyboardType:
                                                                                TextInputType.number,
                                                                            inputFormatters: <TextInputFormatter>[
                                                                              FilteringTextInputFormatter.digitsOnly
                                                                            ],
                                                                            controller:
                                                                                kg_control[snapshot1.data[index]["id"] - 1],
                                                                            style: const TextStyle(
                                                                                fontFamily: 'InriaSans',
                                                                                color: Color.fromARGB(255, 130, 129, 129),
                                                                                fontSize: 20),
                                                                            decoration:
                                                                                const InputDecoration(
                                                                              hintText: '150',
                                                                            ),
                                                                            onChanged:
                                                                                (text) {
                                                                              modifyTempoExercice(snapshot1.data[index]["id"], "kg", text);
                                                                            },
                                                                          ))),
                                                                  Positioned(
                                                                      left: screen_width *
                                                                          0.19,
                                                                      bottom: screen_height *
                                                                          0.017,
                                                                      child:
                                                                          const Text(
                                                                        "kg",
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'InriaSans',
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                130,
                                                                                129,
                                                                                129),
                                                                            fontSize:
                                                                                20),
                                                                      )),
                                                                  Positioned(
                                                                      left: screen_width *
                                                                          0.335,
                                                                      bottom:
                                                                          screen_height *
                                                                              0.00,
                                                                      child: Container(
                                                                          width: 25,
                                                                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                          child: TextField(
                                                                            keyboardType:
                                                                                TextInputType.number,
                                                                            inputFormatters: <TextInputFormatter>[
                                                                              FilteringTextInputFormatter.digitsOnly
                                                                            ],
                                                                            controller:
                                                                                series_control[snapshot1.data[index]["id"] - 1],
                                                                            style: const TextStyle(
                                                                                fontFamily: 'InriaSans',
                                                                                color: Color.fromARGB(255, 130, 129, 129),
                                                                                fontSize: 20),
                                                                            decoration:
                                                                                const InputDecoration(
                                                                              hintText: '3',
                                                                            ),
                                                                            onChanged:
                                                                                (text) {
                                                                              modifyTempoExercice(snapshot1.data[index]["id"], "series", text);
                                                                            },
                                                                          ))),
                                                                  Positioned(
                                                                      left: screen_width *
                                                                          0.39,
                                                                      bottom: screen_height *
                                                                          0.017,
                                                                      child:
                                                                          const Text(
                                                                        "series",
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'InriaSans',
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                130,
                                                                                129,
                                                                                129),
                                                                            fontSize:
                                                                                20),
                                                                      )),
                                                                  Positioned(
                                                                      left: screen_width *
                                                                          0.62,
                                                                      bottom:
                                                                          screen_height *
                                                                              0.00,
                                                                      child: Container(
                                                                          width: 25,
                                                                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                                          child: TextField(
                                                                            keyboardType:
                                                                                TextInputType.number,
                                                                            inputFormatters: <TextInputFormatter>[
                                                                              FilteringTextInputFormatter.digitsOnly
                                                                            ],
                                                                            controller:
                                                                                reps_control[snapshot1.data[index]["id"] - 1],
                                                                            style: const TextStyle(
                                                                                fontFamily: 'InriaSans',
                                                                                color: Color.fromARGB(255, 130, 129, 129),
                                                                                fontSize: 20),
                                                                            decoration:
                                                                                const InputDecoration(
                                                                              hintText: '12',
                                                                            ),
                                                                            onChanged:
                                                                                (text) {
                                                                              modifyTempoExercice(snapshot1.data[index]["id"], "reps", text);
                                                                            },
                                                                          ))),
                                                                  Positioned(
                                                                      left: screen_width *
                                                                          0.685,
                                                                      bottom: screen_height *
                                                                          0.017,
                                                                      child:
                                                                          const Text(
                                                                        "reps",
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                'InriaSans',
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                130,
                                                                                129,
                                                                                129),
                                                                            fontSize:
                                                                                20),
                                                                      ))
                                                                ]),
                                                          ))
                                                    ]));
                                              }));
                                    }
                                  })), //Bouton ajouter exercice
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: screen_width * 0.5,
                    bottom: screen_height * 0.1,
                    child: FloatingActionButton.extended(
                      heroTag: "add",
                      onPressed: () async {
                        setState(() {
                          ls_menu_exo.add("Select an exercise");
                          kg_control.add(TextEditingController());
                          series_control.add(TextEditingController());
                          reps_control.add(TextEditingController());
                          TempoExercice exo = const TempoExercice(
                              idex: 3, series: 0, reps: 0, kg: 0);
                          insertTempoExercice(exo);
                        });
                      },
                      icon: const Icon(Icons.add),
                      backgroundColor: const Color.fromARGB(255, 100, 100, 180),
                      label: const Text('Add'),
                      elevation: 10,
                    ),
                  ),
                  Positioned(
                    right: screen_width * 0.02,
                    bottom: screen_height * 0.1,
                    child: FloatingActionButton.extended(
                      heroTag: "validate",
                      onPressed: () async {
                        DateTime todayFull = DateTime.now().toLocal();
                        String date = todayFull.toString().substring(0, 10);

                        await insertTraining(fullName, typeID, date);
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MyApp(database: database)),
                          );
                        });
                      },
                      backgroundColor: const Color.fromARGB(255, 100, 100, 180),
                      label: const Text('Validate'),
                      elevation: 10,
                    ),
                  ),
                  Positioned(
                    right: screen_width * 0.295,
                    bottom: screen_height * 0.1,
                    child: FloatingActionButton.extended(
                      heroTag: "quit",
                      onPressed: () async {
                        setState(() {
                          delAllTempoExercice();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MyApp(database: database)),
                          );
                        });
                      },
                      //icon: Icon(Icons.add),
                      backgroundColor: const Color.fromARGB(255, 100, 100, 180),
                      label: const Text('Quit'),
                      elevation: 10,
                    ),
                  ),
                ],
              ))
        ]));
  }
}

class Show_training extends StatelessWidget {
  const Show_training({Key? key, required this.database, required this.id})
      : super(key: key);
  final Future<Database> database;
  final int id;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MuscleFlow_ShowTraining',
        theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
            fontFamily: 'InraSans'),
        home: ShowTrainingPage(
            title: 'MuscleFlow_ShowTraining', database: database, id: id));
  }
}

class ShowTrainingPage extends StatefulWidget {
  const ShowTrainingPage(
      {Key? key, required this.title, required this.database, required this.id})
      : super(key: key);
  final String title;
  final Future<Database> database;
  final int id;

  @override
  State<ShowTrainingPage> createState() =>
      _ShowTrainingState(database: database, id: id);
}

class _ShowTrainingState extends State<ShowTrainingPage> {
  _ShowTrainingState({Key? key, required this.database, required this.id});
  final Future<Database> database;
  final int id;

  var maptype = {
    'Select a type': 0,
    'Full body': 1,
    'Leg': 2,
    'Chest': 3,
    'Shoulders': 4,
    'Back': 5,
    'Arms': 6,
    'Cardio': 7,
    'Other': 0
  };
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  Future<List<Map<String, dynamic>>> selectexercises() async {
    final db = await database;
    List<Map<String, dynamic>> liste_raw = await db.rawQuery(
        'SELECT * FROM asso NATURAL JOIN exercises WHERE id=' + id.toString());
    return liste_raw;
  }

  Future<String> getInfo() async {
    final db = await database;
    List<Map<String, dynamic>> raw = await db
        .rawQuery('SELECT * FROM all_trainings WHERE id=' + id.toString());

    if (raw.length == 1) {
      return raw[0]["name"] +
          "   |   " +
          raw[0]["date"] +
          "   |   " +
          raw[0]["nbexo"].toString() +
          " exercises";
    } else {
      return "training deleted";
    }
  }

  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/images/logo_horizontal.png',
                fit: BoxFit.contain,
                height: screen_height / 15,
              ),
            ],
          ),
          leadingWidth: 300,
          backgroundColor: const Color.fromARGB(255, 29, 29, 29),
          actions: const [
            Icon(Icons.more_horiz),
          ],
          actionsIconTheme: const IconThemeData(
            color: Color.fromARGB(255, 152, 152, 152),
            size: 30,
          ),
          toolbarHeight: screen_height / 11,
        ),
        body: Stack(children: <Widget>[
          Positioned(
              left: screen_width / 20,
              top: screen_height / 40,
              height: 37 * screen_height / 40,
              width: 18 * screen_width / 20,
              child: Stack(
                children: <Widget>[
                  FutureBuilder(
                      future: getInfo(),
                      builder: (context, AsyncSnapshot snapshot) {
                        if (!snapshot.hasData) {
                          return const Center(
                              child: CircularProgressIndicator());
                        } else {
                          return Text(snapshot.data,
                              style: const TextStyle(
                                  fontFamily: 'InriaSans',
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20));
                        }
                      }),
                  Positioned(
                    top: screen_height * 0.03,
                    child: SizedBox(
                      width: screen_width,
                      height: screen_height,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                              top: screen_height / 20,
                              child: FutureBuilder(
                                  future: selectexercises(),
                                  builder: (context, AsyncSnapshot snapshot) {
                                    if (!snapshot.hasData) {
                                      return const Center(
                                          child: CircularProgressIndicator());
                                    } else {
                                      return SizedBox(
                                          width: 18 * screen_width / 20,
                                          height: 0.765 * screen_height,
                                          child: ListView.builder(
                                              itemCount: snapshot.data.length,
                                              scrollDirection: Axis.vertical,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return Align(
                                                    child: Container(
                                                        margin: EdgeInsets.only(
                                                            bottom:
                                                                screen_height /
                                                                    50),
                                                        height:
                                                            screen_height / 9,
                                                        width: double.infinity,
                                                        decoration: BoxDecoration(
                                                            color: const Color
                                                                    .fromARGB(
                                                                255,
                                                                38,
                                                                38,
                                                                38),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                        child: Stack(children: [
                                                          Positioned(
                                                            left: screen_width *
                                                                0.03,
                                                            top: screen_height *
                                                                0.02,
                                                            child: Text(
                                                                snapshot.data[
                                                                        index]
                                                                    ["name"],
                                                                style: const TextStyle(
                                                                    fontFamily:
                                                                        'InriaSans',
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            255),
                                                                    fontSize:
                                                                        20)),
                                                          ),
                                                          Positioned(
                                                            left: screen_width *
                                                                0.03,
                                                            top: screen_height *
                                                                0.055,
                                                            child: Text(
                                                                snapshot
                                                                        .data[
                                                                            index]
                                                                            [
                                                                            "series"]
                                                                        .toString() +
                                                                    " series - " +
                                                                    snapshot
                                                                        .data[
                                                                            index]
                                                                            [
                                                                            "reps"]
                                                                        .toString() +
                                                                    " repetitions - " +
                                                                    snapshot
                                                                        .data[
                                                                            index]
                                                                            [
                                                                            "kg"]
                                                                        .toString() +
                                                                    " kg",
                                                                style: const TextStyle(
                                                                    fontFamily:
                                                                        'InriaSans',
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            142,
                                                                            142,
                                                                            142),
                                                                    fontSize:
                                                                        18)),
                                                          ),
                                                        ])));
                                              }));
                                    }
                                  })),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: screen_width * 0.05,
                    bottom: screen_height * 0.1,
                    child: FloatingActionButton.extended(
                      heroTag: "quit",
                      onPressed: () async {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MyApp(database: database)),
                          );
                        });
                      },
                      //icon: Icon(Icons.add),
                      backgroundColor: const Color.fromARGB(255, 100, 100, 180),
                      label: const Text('Quit'),
                      elevation: 10,
                    ),
                  ),
                ],
              ))
        ]));
  }
}

class AllTrainings {
  final String name;
  final int type;
  final int nbexo;
  final String date;

  const AllTrainings(
      {required this.name,
      required this.type,
      required this.nbexo,
      required this.date});

  Map<String, dynamic> toJson() {
    return {'name': name, 'type': type, 'nbexo': nbexo, 'date': date};
  }
}

class Exercise {
  final String name;
  final int type;
  final String img;

  const Exercise({required this.name, required this.type, required this.img});

  Map<String, dynamic> toJson() {
    return {'name': name, 'type': type, 'img': img};
  }
}

class Asso {
  final int id;
  final int idex;
  final int series;
  final int reps;
  final int kg;

  const Asso(
      {required this.id,
      required this.idex,
      required this.series,
      required this.reps,
      required this.kg});

  Map<String, dynamic> toJson() {
    return {'id': id, 'idex': idex, 'series': series, 'reps': reps, 'kg': kg};
  }
}

class TempoExercice {
  final int idex;
  final int series;
  final int reps;
  final int kg;

  const TempoExercice(
      {required this.idex,
      required this.series,
      required this.reps,
      required this.kg});

  Map<String, dynamic> toJson() {
    return {'idex': idex, 'series': series, 'reps': reps, 'kg': kg};
  }
}

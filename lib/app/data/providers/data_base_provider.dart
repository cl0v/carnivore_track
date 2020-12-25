import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

const baseUrl = 'imc_database';

class MyApiClient {
  WidgetsFlutterBinding.ensureInitialized();
// Open the database and store the reference.
final Future<Database> database = openDatabase(
  // Set the path to the database. Note: Using the `join` function from the
  // `path` package is best practice to ensure the path is correctly
  // constructed for each platform.
  join(await getDatabasesPath(), 'doggie_database.db'),
);

  final Future<Database> database = openDatabase(
  // Set the path to the database. Note: Using the `join` function from the
  // `path` package is best practice to ensure the path is correctly
  // constructed for each platform.
  join(await getDatabasesPath(), 'doggie_database.db'),
  // When the database is first created, create a table to store dogs.
  onCreate: (db, version) {
    // Run the CREATE TABLE statement on the database.
    return db.execute(
      "CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)",
    );
  },
  // Set the version. This executes the onCreate function and provides a
  // path to perform database upgrades and downgrades.
  version: 1,
);

// MyApiClient({@required this.httpClient});


// getAll() async {
//   try {
//     var response = await httpClient.get(baseUrl);
//     if(response.statusCode == 200){
//       Map<String, dynamic> jsonResponse = json.decode(response.body);
//         List<MyModel> listMyModel = jsonResponse['data'].map<MyModel>((map) { 
//           return MyModel.fromJson(map);
//         }).toList();
//       return listMyModel;
//     }else print ('erro -get');
//   } catch(_){ }
// }

// getId(id) async {
//   try {
//       var response = await httpClient.get(baseUrl);
//     if(response.statusCode == 200){
//       Map<String, dynamic> jsonResponse = json.decode(response.body);
//         // TODO: implement methods!
//     }else print ('erro -get');
//   } catch(_){ }
// }

// add(obj) async{
//   try {
//     var response = await httpClient.post( baseUrl,
//       headers: {'Content-Type':'application/json'},
//       body: jsonEncode(obj) );
//     if(response.statusCode == 200){
//       // TODO: implement methods!
//     }else print ('erro -post'); 
//   } catch(_){ }
// }

// edit(obj) async{
//   try {
//     var response = await httpClient.put( baseUrl,
//       headers: {'Content-Type':'application/json'},
//       body: jsonEncode(obj) );
//     if(response.statusCode == 200){
//       // TODO: implement methods!
//     }else print ('erro -post'); 
//   } catch(_){ }
// }

// delete(obj) async{
//   try {
//     var response = await httpClient.delete( baseUrl);
//       if(response.statusCode == 200){
//         // TODO: implement methods!
//       }else print ('erro -post'); 
//   } catch(_){ }
// }

}
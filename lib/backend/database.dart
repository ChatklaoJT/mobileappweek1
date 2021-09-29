import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class DBLocal {
  var dbname = "TCT";

  Future<Database> connectDB() async {
    //find position in mobile device
    dynamic directory = await getApplicationDocumentsDirectory();
    print(directory);
    var location = join(directory.path, this.dbname);
    // print(location);

    // create db file
    var createDB = databaseFactoryIo;
    var db = await createDB.openDatabase(location);
    // print(db);

    return db;
  }

  Future<void> register(name, surname, email, password) async {
    // create database or open database
    print('$name $surname $email $password');

    var db = await this.connectDB();

    // begin store
    var store = intMapStoreFactory.store('user');
    //print(store);

    var user = await store.add(db, {
      'name': name,
      'surname': surname,
      'email': email,
      'password': password,
    });
    print(user);

    await store.find(db).then((value) {
      //callback function
      print(value);
    }).catchError((onError) {
      print(onError);
    });

    db.close();
  }

  Future<bool> login(email, password) async {
    var db = await this.connectDB();
    var store = intMapStoreFactory.store('user');
    //print(store);

    var user = await store.find(db);

    for (var item in user) {
      print(item['email']);

      if (item['email'] == email && item['password'] == password) {
        return true;
      }
    }
    return false;
  }
}

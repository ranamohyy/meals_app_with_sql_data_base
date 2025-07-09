import 'package:meals_app/dp_helper/meal_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DpHelper {
  static final DpHelper instance = DpHelper();
  Database? dataBase;

  Future<Database> get data async {
    if (dataBase != null) return dataBase!;
    dataBase = await initilizeDb();
    return dataBase!;
  }

  static Future<Database> initilizeDb() async {
    String path = join(await getDatabasesPath(), 'meals.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: createDataBase,
    );
  }

  static Future<void> createDataBase(Database db, int version) async {
    await db.execute('''
CREATE TABLE meals (
id INTEGER PRIMARY KEY AUTOINCREMENT,
imageUrl TEXT,
name TEXT,
description TEXT,
rate REAL,
time TEXT
)
''');
  }

  Future<int> insertMeal(MealModel meal) async {
    Map<String, dynamic> map = meal.toMap();
    final db = await dataBase;
    return await db!.insert('meals', map);
  }

  Future<List<MealModel>> getMeals() async {
    final db = await dataBase;
    List<Map<String, dynamic>> maps = await db!.query('meals');
    List<MealModel> meals = maps.map((map) => MealModel.fromMap(map)).toList();

    return meals;
  }
}

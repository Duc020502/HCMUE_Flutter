/*
import 'package:app_qlsv/models/ds_sv.dart';
import 'package:app_qlsv/resources/strings.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class StudentDatabase {
  final String DB_NAME = "StudentData";
  final String TABLE = "Student";
  final String  id = "id";
  final String hoten = "hoten";
  final String lop = "lop";
  final String khoa = "khoa";
  final String nganh = "nganh";
  static final StudentDatabase _instance = StudentDatabase._();
  StudentDatabase._();
  factory StudentDatabase(){
    return _instance;
  }
  static Database? _database;
  Future<Database?> get  db async{
    if (_database != null){
      return _database;
    }
    _database = await init();
    return _database;
  }

  Future<Database> init() async{
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, 'StudentData');
    var database = openDatabase(path,version: 1,onCreate: _onCreate,onUpgrade: _onUpgrade);
    return database;
  }
  void _onCreate(Database db, int version)
  {
    db.execute('''
    CREATE TABLE $TABLE(
    $id INTERGER PRIMARY KEY AUTOINCREMENT,
    $hoten TEXT,
    $lop TEXT,   
    $khoa TEXT,
    $nganh TEXT
    ''');
    print("New Student Database was created");
  }
  void _onUpgrade(Database db,int oldVersion,int newVersion){}
  Future<int> addStudent(StudentModel? student)async{
    var client = await db;
    return client!.insert(
      TABLE, student!.toJson(),conflictAlgorithm: ConflictAlgorithm.replace);
  }
  Future<StudentModel?> fetchStudent (int id) async {
    var client = await db;
    final Future<List<Map<String, dynamic>>> futureMaps =
        client!.query(TABLE, where: '$ID = ?',whereArgs: [id]);
     var maps = await futureMaps;
     if(maps.length != 0)
       {
         return StudentModel .fromJson(maps.first);
       }
     return null;
  }
  Future<StudentModel?> fetchStudentByStudent (String hoten) async {
    var client = await db;
    final Future<List<Map<String, dynamic>>> futureMaps =
    client!.query(TABLE, where:'$hoten = ?',whereArgs: [hoten]);
    var maps = await futureMaps;
    if(maps.length != 0)
    {
      return StudentModel.fromJson(maps.first);
    }
    return null;
  }
  Future<List<StudentModel?>> fetchAll () async {
    var client = await db;
    var res = await client!.query(TABLE);

    if(res.isNotEmpty)
    {
      var hotens = res.map((studentMap) => StudentModel.fromJson(studentMap)).toList();
      return hotens;
    }
    return [];
  }
  Future<int> updateStudent(StudentModel? newStudent)async{
    var client = await db;
    return client!.update(
        TABLE, newStudent!.toJson(),where: '$ID = ?',whereArgs: [newStudent.id],conflictAlgorithm: ConflictAlgorithm.replace);
  }
  Future<int> removeStudent(int id)async{
    var client = await db;
    return client!.delete(
        TABLE,where: '$ID = ?',whereArgs: [id]);
  }
  Future<List<StudentModel?>> searchStudentResults (String searchStudent) async {
    var client = await db;
    var response = await client!.query(TABLE,where:'$hoten like ?',whereArgs: ['$searchStudent%%'], limit: 14);
    List<StudentModel> list = response.map((c) => StudentModel.fromJson(c)).toList();
    return list;
  }
}
*/

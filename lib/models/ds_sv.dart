import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class StudentModel {
  //String? id;
  final  String mssv;
 //final String hoten;
  String? lop;
  String? khoa;
  String? nganh;

  StudentModel(
      { required this.mssv});
/*
  StudentModel.fromJson(Map json)
      :
        this.id = json['id'],
        this.hoten = json['hoten'],
        this.lop = json['lop'],
        this.khoa = json['khoa'],
        this.nganh = json['nganh'];

  toJson() {
    return {
      //'id': this.id,
      //'hoten': this.hoten,
      'lop': this.lop,
      'khoa': this.khoa,
      'nganh': this.nganh,
    };
  }
*/
  factory StudentModel.fromMap(Map<String, dynamic>json) {
    return StudentModel(
        //id: json['id'],
        //hoten: json['hoten'],
        mssv: json['mssv']);
  }
  Map<String, dynamic> toMap(){
    return {
     // 'id':id,
      //'hoten':hoten,
      'mssv' :mssv,
    };
  }
}
class DatabaseHelper{
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database? _database;
  Future<Database> get database async => _database ??= await _initDatabase();
  Future<Database> _initDatabase() async{
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path,'students');
    return await openDatabase(
        path,
      version: 1,
      onCreate: _onCreate,
    );
  }
  Future _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE students(
    id INTEGER PRIMARY KEY,
    mssv TEXT,
    )
    ''');
  }
  //void _onUpgrade(Database db,int oldVersion,int newVersion){}

  Future<List<StudentModel>> getStudents() async{
    Database db = await instance.database;
    var students = await db.query('students',orderBy:'mssv');
    List<StudentModel> studentList = students.isNotEmpty
    ? students.map((c) => StudentModel.fromMap(c)).toList(): [];
    return studentList;
  }
  Future<int> AddStudent(StudentModel student)async{
    Database db = await instance.database;

    return await db.insert('students', student.toMap());
  }

}
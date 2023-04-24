/*import 'dart:async';
import 'dart:math';
import 'package:app_qlsv/base/base_bloc.dart';
import 'package:app_qlsv/base/base_event.dart';
import 'package:app_qlsv/models/ds_sv.dart';
import '../event/add_sv.dart';
import '../event/delete_sv.dart';

class SvBloc extends BaseBloc{
  final StreamController<List<Student>> _studentListStreamController =
      StreamController<List<Student>>();
  Stream<List<Student>> get studentListStream =>_studentListStreamController.stream;
var _randomInt = Random();
 List<Student> _studentlistData = <Student>[];
  _addStudent(Student student){
  _studentlistData.add(student);
  _studentListStreamController.sink.add(_studentlistData);
  }
  _deleteStudent (Student student){
    _studentlistData.remove(student);
    _studentListStreamController.sink.add(_studentlistData);
  }
  @override
  void dispatchEvent(BaseEvent event) {
    // TODO: implement dispatchEvent
    if(event is AddSvEvent){
      Student student = Student.fromData(_randomInt.nextInt(100), event.content);
      _addStudent(student);
    } else if(event is DeleteSvEvent){
       _deleteStudent(event.student);
    }

  }
   @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _studentListStreamController.close();
  }
}*/
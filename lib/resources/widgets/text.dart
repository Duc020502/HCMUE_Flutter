import 'dart:convert';

import 'package:app_qlsv/databases/student_database.dart';
import 'package:app_qlsv/models/ds_sv.dart';
import 'package:flutter/material.dart';
class text extends StatelessWidget {
  const text( {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        body: Center(
        child: FutureBuilder<List<StudentModel>>(
        future: DatabaseHelper.instance.getStudents(),
    builder: (BuildContext context,AsyncSnapshot<List<StudentModel>>snapshot){
    if(!snapshot.hasData)
    {
    return Center(child: Text('Loading...'));
    }
    return snapshot.data!.isEmpty
    ? Center(child: Text('No Student in List.'),)
        :ListView(
    children: snapshot.data!.map((student){
    return Center(
    child: ListTile(
    title: Text(student.mssv),
    ),
    );
    }).toList(),
    );

    }),
    ));
  }
}

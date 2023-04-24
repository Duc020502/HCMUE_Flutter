import 'package:app_qlsv/bloc/ds_bloc.dart';
import 'package:app_qlsv/databases/student_database.dart';
import 'package:app_qlsv/models/ds_sv.dart';
import 'package:app_qlsv/resources/strings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../event/delete_sv.dart';
import 'custom_button.dart';
class danhsachsv extends StatefulWidget {
  const danhsachsv({Key? key}) : super(key: key);

  @override
  State<danhsachsv> createState() => _danhsachsvState();
}

class _danhsachsvState extends State<danhsachsv> {

  @override
  Widget build(BuildContext context) {

    return Scaffold (
      appBar: AppBar(title:const Text (appbar_ds),
    ),
     body: ListView.builder(
         itemCount:10,
         itemBuilder:(context,index){
           return ListTile(
           title: Text("dsfgsd"),
    trailing: GestureDetector(
    onTap:(){},
    child: Icon(
    Icons.delete,
    color: Colors.amber,
    ),
    ),
           );
    }));
  }
}


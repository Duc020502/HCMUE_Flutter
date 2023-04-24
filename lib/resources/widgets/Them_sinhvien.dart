import 'package:app_qlsv/bloc/ds_bloc.dart';
import 'package:app_qlsv/databases/student_database.dart';
import 'package:app_qlsv/event/add_sv.dart';
import 'package:app_qlsv/models/ds_sv.dart';
import 'package:app_qlsv/resources/strings.dart';
import 'package:app_qlsv/resources/widgets/text.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Text_Field.dart';
import 'custom_button.dart';
class TxsSinhVien extends StatefulWidget {
  const TxsSinhVien({Key? key}) : super(key: key);

  @override
  State<TxsSinhVien> createState() => _TxsSinhVienState();
}
class _TxsSinhVienState extends State<TxsSinhVien> {
  String hotenstr ="";
  String idstr = "";
  TextEditingController? idController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    idController = TextEditingController();
   //hotenController = TextEditingController();
    //gioitinhController = TextEditingController();
    //queController = TextEditingController();
    //lopController = TextEditingController();
    //khoaController = TextEditingController();
   //nganhController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {

    //var bloc = Provider.of<SvBloc>(context);
    return Scaffold(
       // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text(add),
        ),
        body: Center(
          child: SingleChildScrollView(
            padding:  const EdgeInsets.only(bottom: 32,),
            child: Column(
            children: <Widget>[
              Inputwidget(labelText: ID, Controller: idController,),
              //Inputwidget(labelText: Hoten, Controller: hotenController,),
            //  Inputwidget(labelText: lop, Controller: lopController,),
            //  Inputwidget(labelText: khoa, Controller: khoaController,),
            //  Inputwidget(labelText: nganh, Controller: nganhController,),
            //  Inputwidget(labelText: gioitinh, Controller: gioitinhController,),
              //Inputwidget(labelText: que, Controller: queController,),

          Padding(padding:const EdgeInsets.only(top:30),
              child: CustomButton(onPressed: ()async {

                await DatabaseHelper.instance.AddStudent(
                  StudentModel(mssv: idController!.text)
                );
                print('object');
                    setState(() {
                      idController?.clear();
                      //hotenController?.clear();
                    });
              },buttonText: add1,
          ))],
            )
          ),
        ));
  }
}

import 'package:app_qlsv/resources/widgets/text.dart';
import 'package:flutter/material.dart';

import '../strings.dart';
import 'Danh_sachsv.dart';
import 'Them_sinhvien.dart';
import 'chuyen_doi.dart';
class admin extends StatelessWidget {
  const admin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer:  Drawer(
            child:  ListView(
              children:  [
                 const DrawerHeader(
                   decoration: BoxDecoration(
                      color: Colors.blue
                  ),
                   child: CircleAvatar(
                     //backgroundImage: AssetImage('assets/images/download.png'),
                     child:  Text(menu,style:TextStyle(fontWeight:FontWeight.w900,
                         fontSize: 15,
                         color: Colors.black)),
                   ),

                ),

                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text (Sinh_Vien),
                  subtitle: const Text(ta_sv),
                  trailing: const Icon(Icons.add_circle),
                  onTap: (){
                    var route = MaterialPageRoute(builder: (context)=>  TxsSinhVien());
                    Navigator.push(context, route);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.list),
                  title: const Text (appbar_ds),
                  subtitle: const Text("Student List"),
                  trailing: const Icon(Icons.add_circle),
                  onTap: (){
                    var route = MaterialPageRoute(builder: (context)=>text());//danhsachsv());
                    Navigator.push(context, route);
                  },
                ),
              ],

            )
        ),
        appBar: AppBar(
          title: const Text(qtv),
          centerTitle: true,
        )
    );

  }
}


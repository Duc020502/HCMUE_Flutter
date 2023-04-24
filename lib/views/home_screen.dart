import 'package:app_qlsv/resources/widgets/admin.dart';
import 'package:app_qlsv/resources/widgets/giang_vien.dart';
import 'package:flutter/material.dart';
import '../resources/strings.dart';

import '../resources/widgets/Sinh_vien.dart';
import '../resources/widgets/Text_Field.dart';
import '../resources/widgets/custom_button.dart';
import '../resources/widgets/information_login.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String userstr ="";
  String passstr = "";
  int _value = 3;
  String cn = "";
  String cn1 = "";

  TextEditingController? userController,passController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userController = TextEditingController();
    passController = TextEditingController();
  }
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom !=0;
    return Scaffold(
        resizeToAvoidBottomInset: false,

        appBar: AppBar(
          title: const Text(Dang_Nhap),
              centerTitle: true,
        ),

      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            child: Column(
              children:[
                Image.asset('assets/images/launch_image1.png'),
                Padding(padding:const EdgeInsets.only(top:30),
                    child: Row(
                        children: [
                          Radio(value: 1,
                              groupValue:_value,
                              onChanged: (Value){
                                setState(()
                                {
                                  _value = Value!;
                                });
                              }),
                          const Text(Giang_Vien,style:TextStyle(fontWeight:FontWeight.bold,
                              fontSize: 12,
                              color: Colors.black)),
                          Radio(value: 2,
                              groupValue:_value,
                              onChanged: (Value){
                                setState(()
                                {
                                  _value = Value!;
                                });
                              }),

                          const Text(Sinh_Vien,style:TextStyle(fontWeight:FontWeight.bold,
                              fontSize: 12,
                              color: Colors.black)),
                          Radio(value: 3,
                              groupValue:_value,
                              onChanged: (Value){
                                setState(()
                                {
                                  _value = Value!;
                                });
                              }),
                          const Text(Qtr_Vien,style:TextStyle(fontWeight:FontWeight.bold,
                              fontSize: 12,
                              color: Colors.black)),

                        ]
                    )
                ),

                Inputwidget(labelText: Username_Login, Controller:userController,),

                Inputwidget(labelText: Password_Login, Controller: passController,),
                InformationLogin(returnmk:cn,),
                Padding(padding:const EdgeInsets.only(top:30),
                  child: CustomButton(
                      onPressed: (){
                        setState(() {
                          userstr = userController?.text as String;
                          passstr = passController?.text as String;
                          if(userstr=='3'&& passstr =='3'&& _value == 3){
                            var route = MaterialPageRoute(builder: (context)=>admin());
                            Navigator.pushReplacement(context, route);
                          }
                          else if(userstr=='2'&& passstr =='2'&& _value == 2){
                            var route = MaterialPageRoute(builder: (context)=>SinhVien());
                            Navigator.pushReplacement(context, route);
                          }
                          else if(userstr=='1'&& passstr =='1'&& _value == 1){
                            var route = MaterialPageRoute(builder: (context)=>giangvien());
                            Navigator.pushReplacement(context, route);
                          }

                          else if(userstr== ""||passstr== "") {
                            cn = capnhat;
                            cn1 = "";//thiếu thông tin đăng nhập
                          }
                          else{
                            cn1= capnhat2;//thiếu thông tin đăng nhập
                          }
                          if(userstr!= ""&&passstr!= ""){
                            cn= "";//thiếu thông tin đăng nhập
                          }

                        });
                      },
                      buttonText: Button_Login
                  ),

                ),
                InformationLogin(returnmk:cn1,)
              ],

            ),
          ),
        ),
      )
    );
  }
@override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    userController!.dispose();
    passController!.dispose();

  }
}

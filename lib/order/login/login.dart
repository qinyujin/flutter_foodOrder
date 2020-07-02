

import 'package:flutter/material.dart';
import 'package:flutterapp/order/component/toast.dart';

class login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return loginState();
  }
}

class loginState extends State<login>{
  final _formKey = GlobalKey<FormState>();
  final _userNameController=TextEditingController();
  final _passWordController=TextEditingController();
  String _UserInputValue='';
  String _PassWordInputValue='';

  /**
   * 绑定用户名和密码分别为UserInputValue 和 PassWordInputValue
   */
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _userNameController.addListener((){
      _UserInputValue=_userNameController.value.text;
      setState(() {

      });
    });

    _passWordController.addListener((){
      _PassWordInputValue=_passWordController.value.text;
      setState(() {

      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _userNameController.dispose();
    _passWordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('员工登录'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/restaurant.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
          key: _formKey,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: TextFormField(
                      validator: (str) => str.length>=6 ? null:'用户名长度大于等于6',
                      controller: _userNameController,
                      decoration: InputDecoration(
                          labelText: '用户名',
                          prefixIcon: Icon(Icons.person),
                          hintText: '请输入你的用户名',
                        fillColor: Colors.white,
                        filled: true,
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: TextFormField(
                      validator: (str) => str.length>=6 ? null:'密码长度长度大于等于6',
                      controller: _passWordController,
                      decoration: InputDecoration(
                          labelText: '密码',
                          prefixIcon: Icon(Icons.lock),
                          hintText: '请输入你的密码',
                        fillColor: Colors.white,
                        filled: true,
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                  ),
                  RaisedButton(
                      child: Text('登录'),
                      onPressed: (){
                        var _state=_formKey.currentState;
                        _state.validate();
                        if(_UserInputValue=='2017214228' && _PassWordInputValue=='123456'){
                          Navigator.pushNamed(context, '/index');
                        }
                        else Toast.toast(context,msg: "用户名或者密码错误",position: ToastPostion.center);
                        setState(() {
                        });
                      })
                ],
              ),
            )
        ),
      ),
    );
  }
}
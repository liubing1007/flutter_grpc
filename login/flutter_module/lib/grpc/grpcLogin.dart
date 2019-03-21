import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_module/grpc/grpcForm.dart';
import 'package:flutter_module/src/generated/auth.pbgrpc.dart';
import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grpc/grpc.dart';

BuildContext mContext;
class grpcLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    mContext = context;
    return MaterialApp(
      title: '爱照护e护',
      debugShowCheckedModeBanner: false,  // 设置这一属性即可
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State {

  var _eyeClick = true;
  TextEditingController controllerUser = TextEditingController();
  TextEditingController controllerPwd = TextEditingController();
  String ticket;
  int accountId ;

  Future _login() async {

    final channel = new ClientChannel('192.168.0.101',
        port: 23333,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));
    final stub = new AuthServerClient(channel);
    String userName = controllerUser.text;
    String pwd = controllerPwd.text;
    try {
      final response = await stub.auth(new AuthRequest()..pwd = pwd..userName = userName
      ..udid='udid'..manufacturer='sum'..model='sum'..osVersion='23'..appVersion='23'
      ..token='aa'..appType='1'..type='1');
      ticket = response.ticket;
      accountId = response.accountId;
      print('Greeter client received: ${response.code}${response.ticket}${response.accountId}${response.error}');
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (context) => new grpcForm(userName: userName, ticket: ticket, accountId: accountId),
        ),
      );
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
  }

  void _eyeOnClick(){
    setState(() {
      if(_eyeClick){
        _eyeClick = false;
      }else{
        _eyeClick = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //设置适配尺寸 (填入设计稿中设备的屏幕尺寸) 假如设计稿是按iPhone6的尺寸设计的(iPhone6 750*1334)
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    Widget buildTextFieldUser () {
      return new Container(
        alignment: Alignment.centerLeft,
        height: ScreenUtil().setHeight(100),
        margin: new EdgeInsets.fromLTRB(0, ScreenUtil().setWidth(10), 0, 0) ,
        child: new Row(
          children: <Widget>[

            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                  '+86',
                  style: TextStyle(fontSize: ScreenUtil().setSp(32),
                    color: Color(0xFFFFFFFF),
                    decoration: TextDecoration.none,)
              ),
            ),

            new Expanded(
              child: new TextField(
                //获取方式 String value=controller.text
                controller: controllerUser,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)
                  ),
                  contentPadding: new EdgeInsets.fromLTRB(ScreenUtil().setWidth(10), 0, 0, 0) ,
                  fillColor: Colors.transparent, filled: true,
                  disabledBorder: InputBorder.none,
                  enabledBorder:  InputBorder.none,
                  focusedBorder:  InputBorder.none,
                ),
                //键盘类型
                keyboardType: TextInputType.text,
                textAlign: TextAlign.left,
                //输入文本的样式
                style: TextStyle(fontSize: ScreenUtil().setSp(32), color: Colors.white),
                //最大行数
                maxLines: 1,
                //限制输入的 最大长度  TextField右下角没有输入数量的统计字符串
                inputFormatters: [LengthLimitingTextInputFormatter(11)],
                //光标颜色
                cursorColor: Colors.white,
              ),
            ),

          ],
        ),
      );
    }

    Widget buildTextFieldPwd () {
      return new Container(
        alignment: Alignment.centerLeft,
        height: ScreenUtil().setHeight(100),
        margin: new EdgeInsets.fromLTRB(0, ScreenUtil().setWidth(10), 0, 0) ,
        child: new Row(
          children: <Widget>[

            Container(
              alignment: Alignment.centerLeft,
                child: Image(
                  width: ScreenUtil().setWidth(27),
                  height: ScreenUtil().setWidth(34),
                  image: AssetImage("assets/home_lock.png"),
                ),
            ),

            new Expanded(
              child: new TextField(
                //获取方式 String value=controller.text
                controller: controllerPwd,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)
                  ),
                  contentPadding: new EdgeInsets.fromLTRB(ScreenUtil().setWidth(10), 0, 0, 0) ,
                  fillColor: Colors.transparent, filled: true,
                  disabledBorder: InputBorder.none,
                  enabledBorder:  InputBorder.none,
                  focusedBorder:  InputBorder.none,
                ),
                //键盘类型
                keyboardType: TextInputType.text,
                textAlign: TextAlign.left,
                obscureText: _eyeClick,  //是否隐藏输入
                //输入文本的样式
                style: TextStyle(fontSize: ScreenUtil().setSp(32), color: Colors.white),
                //最大行数
                maxLines: 1,
                //限制输入的 最大长度  TextField右下角没有输入数量的统计字符串
                inputFormatters: [LengthLimitingTextInputFormatter(6)],
                //光标颜色
                cursorColor: Colors.white,
              ),
            ),

          GestureDetector(
            onTap: () {
              _eyeOnClick();
            },
            child: Container(
              alignment: Alignment.centerRight,
              height: ScreenUtil().setWidth(100),
              width: ScreenUtil().setWidth(80),
              padding: new EdgeInsets.fromLTRB(ScreenUtil().setWidth(10), 0, 0, 0),
              child: Image(
                width: ScreenUtil().setWidth(42),
                height: ScreenUtil().setWidth(20),
                image: AssetImage(_eyeClick ? "assets/home_code_eye_close.png" : "assets/home_code_eye_open.png"),
              ),
            ),
          ),

          ],
        ),
      );
    }

    return new Scaffold(
        body: new SingleChildScrollView(
            child: new Container(
              height: ScreenUtil().setWidth(1334),
              padding:new EdgeInsets.fromLTRB(ScreenUtil().setWidth(85), ScreenUtil().setWidth(115), ScreenUtil().setWidth(85), 0) ,
              color: Color(0xFF35578B),
              child: new Column(
                children: [

                  //没有账号
                  Container(
                    alignment: Alignment.topRight,
                    child: Text(
                      '没有账号',
                      style: TextStyle(fontSize: ScreenUtil().setSp(32),
                        color: Color(0xFFFFFFFF),
                        decoration: TextDecoration.none,)
                    ),
                  ),

                  //密码登录
                  Container(
                    alignment: Alignment.topLeft,
                    padding: new EdgeInsets.fromLTRB(0, ScreenUtil().setWidth(100), 0 ,0),
                    child: Text(
                      '密码登录',
                      style: TextStyle(fontSize: ScreenUtil().setSp(60),
                        color: Color(0xFFFFFFFF),
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,)
                    ),
                  ),

                  //手机号
                  Container(
                    alignment: Alignment.topLeft,
                    padding: new EdgeInsets.fromLTRB(0, ScreenUtil().setWidth(70), 0 ,0),
                    child: Text(
                        '手机号',
                        style: TextStyle(fontSize: ScreenUtil().setSp(32),
                          color: Color(0xFFFFFFFF),
                          decoration: TextDecoration.none,)
                    ),
                  ),
                  buildTextFieldUser(),

                  //分割线
                  new Container(
                    padding: new EdgeInsets.fromLTRB(0, 0, 0 ,0),
                    child: new Divider(height: ScreenUtil().setWidth(1), color: const Color(0x4DFFFFFF)),
                  ),

                  //密码
                  Container(
                    alignment: Alignment.topLeft,
                    padding: new EdgeInsets.fromLTRB(0, ScreenUtil().setWidth(65), 0 ,0),
                    child: Text(
                        '密码',
                        style: TextStyle(fontSize: ScreenUtil().setSp(32),
                          color: Color(0xFFFFFFFF),
                          decoration: TextDecoration.none,)
                    ),
                  ),
                  buildTextFieldPwd (),

                  //分割线
                  new Container(
                    padding: new EdgeInsets.fromLTRB(0, 0, 0 ,0),
                    child: new Divider(height: ScreenUtil().setWidth(1), color: const Color(0x4DFFFFFF)),
                  ),

                  //登录
                  new Container(
                    width: ScreenUtil().setWidth(580),
                    margin: EdgeInsets.only(top: ScreenUtil().setHeight(60)),
                    height: ScreenUtil().setHeight(90),
                    child: new RaisedButton(
                        onPressed: () {
                          _login();
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(ScreenUtil().setHeight(45)),
                            topLeft: Radius.circular(ScreenUtil().setHeight(45)),
                            bottomRight: Radius.circular(ScreenUtil().setHeight(45)),
                            bottomLeft: Radius.circular(ScreenUtil().setHeight(45)),
                          ),
                        ),
                        child: new Text(
                            '登录',
                            style: TextStyle(fontSize: ScreenUtil().setSp(36),
                                color: Color(0xFFFFFFFF)
                            )
                        ),
                        color: Color(0xFFED934D)
                    ),
                  ),

                  //忘记密码
                  new Container(
                    padding: EdgeInsets.only(top: ScreenUtil().setHeight(70), bottom: ScreenUtil().setHeight(70)),
                    alignment: Alignment.topCenter,
                    child:new FlatButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
//                        scan();
                      },
                      child: Text('忘记密码',
                        style: TextStyle(fontSize: ScreenUtil().setSp(30),
                          color: Color(0xFFFFFFFF)
                        ),
                      ),
//                      child: Text('$barcode',
//                        style: TextStyle(fontSize: ScreenUtil().setWidth(30),
//                            color: Color(0xFFFFFFFF)
//                        ),
//                      ),
                    ),
                  ),

                  //结束

                ],
              ),
            ),
        ),
    );
  }
}

import 'dart:async';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:flutter_module/src/generated/getDamins.pbgrpc.dart';
import 'package:flutter_module/src/generated/saveSeniorBack.pbgrpc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

const jumpPlugin = const MethodChannel('com.ginkodrop.record.activity/plugin');
const counterPlugin = const EventChannel('com.ginkodrop.record.activity/counter');
BuildContext mContext;
class grpcForm extends StatelessWidget {
  String userName;
  String ticket;
  int accountId;
  grpcForm({Key key, this.userName, this.ticket, this.accountId}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    mContext = context;
    return MaterialApp(
      title: '爱照护e护',
      debugShowCheckedModeBanner: false,  // 设置这一属性即可
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _MyHomePage(userName: userName, ticket: ticket, accountId: accountId),
    );
  }
}


class _Mylist1 extends StatefulWidget{
  List formList;
  _Mylist1(List formList){
    this.formList = formList;
  }
  @override
  _MylistPageState1 createState() => _MylistPageState1(formList);
}

class _MylistPageState1 extends State<_Mylist1> {

  List formList;
  int inex = -1;

  _MylistPageState1(List formList){
    this.formList = formList;
  }

  void _setList1(int index){
    setState(() {
      inex = index;
    });
  }

  Widget _buildList() {
    List<Widget> tiles = [];//先建一个数组用于存放循环生成的widget
    Widget content; //单独一个widget组件，用于返回需要生成的内容widget
    for(int i = 0; i< formList.length; i++) {
      tiles.add(
          new Column(
              children: <Widget>[
                new Container(
                  width: ScreenUtil().setWidth(750),
                  height: ScreenUtil().setWidth(70),
                  color: Color(0xFFFFFFFF),
                  child: new FlatButton(
                    onPressed: () {
                      _setList1(i);
                    },
                    child: new Container(
                      width: ScreenUtil().setWidth(750),
                      height: ScreenUtil().setWidth(70),
                      padding:new EdgeInsets.fromLTRB(ScreenUtil().setWidth(30), 0, ScreenUtil().setWidth(30), 0),
                      child: new Row(
                        children: <Widget>[
                          new Expanded(
                              child: new Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  formList[i]['name'],
                                  style: TextStyle(fontSize: ScreenUtil().setSp(36),
                                    color: Color(0xFF5F6060),
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              )
                          ),

                          new Container(
                            width: ScreenUtil().setWidth(36),
                            height: ScreenUtil().setWidth(70),
                            alignment: Alignment.centerRight,
                            child: Image(
                              width: ScreenUtil().setWidth(36),
                              height: ScreenUtil().setWidth(36),
                              image: AssetImage(i == inex ? "assets/gongdan_xuanze_yigouxuan.png" : "assets/gongdan_xuanze_weixuanze.png"),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ]
          )
      );
    }
    content = new Column(
        children: tiles //重点在这里，因为用编辑器写Column生成的children后面会跟一个<Widget>[]，
      //此时如果我们直接把生成的tiles放在<Widget>[]中是会报一个类型不匹配的错误，把<Widget>[]删了就可以了
    );
    return content;
  }

  @override
  Widget build(BuildContext context) {
    int count = formList.length;
    int high1 = 0;
    int high2 = 0;
    if(count > 7){
      high1 = 700;
      high2 = 580;
    }else{
      high1 = 700 - ((8 - count) * 70);
      high2 = 580 - ((8 - count) * 70);
    }
    return new Container(
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setWidth(high1),
      color: Color(0xFFFFFFFF),
      child: new Column(
        children: <Widget>[

          new Container(
            color: Color(0xFFFFFFFF),
            child: new Row(
               children: <Widget>[
                 //取消
                 new Expanded(
                   child: new Container(
                     alignment: Alignment.centerLeft,
                     width: ScreenUtil().setWidth(134),
                     height: ScreenUtil().setWidth(118),
                     child: new FlatButton(
                       padding: EdgeInsets.zero,
                       onPressed: () {
                         Navigator.pop(context);
                         },
                       child: new Container(
                         width: ScreenUtil().setWidth(134),
                         height: ScreenUtil().setWidth(118),
                         child: new Center(
                           child: Text(
                               '取消',
                               style: TextStyle(fontSize: ScreenUtil().setSp(42),
                                 color: Color(0xFF5F6060),
                                 decoration: TextDecoration.none,)
                           ),
                         ),
                       ),
                     ),
                   ),
                 ),
                 //确认
                 new Expanded(
                   child: new Container(
                     alignment: Alignment.centerRight,
                     width: ScreenUtil().setWidth(134),
                     height: ScreenUtil().setWidth(118),
                     child: new FlatButton(
                       padding: EdgeInsets.zero,
                       onPressed: () {
                         Navigator.pop(context, {'name': inex == -1 ? "" : formList[inex]['name'],
                         'id': inex == -1 ? 0 : formList[inex]['id']});
                       },
                       child: new Container(
                         width: ScreenUtil().setWidth(134),
                         height: ScreenUtil().setWidth(118),
                         child: new Center(
                           child: Text(
                               '确认',
                               style: TextStyle(fontSize: ScreenUtil().setSp(42),
                                 color: Color(0xFF5F6060),
                                 decoration: TextDecoration.none,)
                           ),
                         ),
                       ),
                     ),
                   ),
                 ),

               ],
            ),
          ),

          //分割线
          new Container(
            padding: new EdgeInsets.fromLTRB(ScreenUtil().setWidth(27), 0, ScreenUtil().setWidth(27) ,0),
            child: new Divider(height: ScreenUtil().setWidth(1), color: const Color(0xFFE7E7E8)),
          ),

          new Container(
            padding: new EdgeInsets.fromLTRB(0, 0, 0 ,ScreenUtil().setWidth(20)),
            width: ScreenUtil().setWidth(750),
            height: ScreenUtil().setWidth(high2),
            color: Color(0xFFFFFFFF),
            child: new Scaffold(
              body: new SingleChildScrollView(
                child: new Container(
                  padding:new EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: _buildList(),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }

}

class _MyHomePage extends StatefulWidget {
  String userName;
  String ticket;
  int accountId;
  _MyHomePage({Key key, this.userName, this.ticket, this.accountId}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState(userName: userName, ticket: ticket, accountId: accountId);
}

class _MyHomePageState extends State<_MyHomePage> {
  String userName;
  String ticket;
  int accountId;
  _MyHomePageState({this.userName, this.ticket, this.accountId});

  TextEditingController controller = TextEditingController();

  int id = 0;//服务对象
  String string1 = '';
  var _click2 = false;//2017.09.01前入住
  String string3 = "";//认知程度
  var _click4 = false;//符合周末回家标准
  var _click5 = true;//符合出院标准
  List formList1; //服务对象
  List formList2; //认知程度

  _getDamins()async{

    final channel = new ClientChannel('192.168.0.101',
        port: 23334,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));
    final stub = new DaminsServerClient(channel);
    String cmd = "GET_DOMAIN";
    String udid = "udid";
    try {
      final response = await stub.getDamins(new DaminRequest()..cmd=cmd..udid=udid..userName=userName..ticket=ticket);
      print('Greeter client received: ${response.toString()}');
      List<Domain> domains = response.domains;
      int total = domains.length;
      if(total > 0){
        formList1 = new List();
        for(int i = 0; i < total; i++){
          var pp = {"name": domains[i].displayName, "id": domains[i].id};
          formList1.add(pp);
        }
      }
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
  }

  @override
  initState(){
    super.initState();
    _getDamins();
    formList2 = [
      {"name": '正常', "id": 0},
      {"name": '轻度', "id": 0},
      {"name": '中度', "id": 0},
      {"name": '重度', "id": 0},
    ];

  }

  Future<Null> _finsh() async {
    String result = await jumpPlugin.invokeMethod('finish');
    if(result == "success"){
      //成功
    }
  }

  void _onClick1(){ //服务对象
    if(formList1.length > 0) {
      showModalBottomSheet(
          context: context,
          builder: (context) => _Mylist1(formList1)).then((result) {
        setState(() {
          if (result.isNotEmpty) {
            string1 = result['name'];
            id = result['id'];
          }
        });
      }).catchError((error) {}
      );
    }
  }

  void _onClick2(){ //2017.09.01前入住
    setState(() {
      if(_click2){
        _click2 = false;
      }else{
        _click2 = true;
      }
    });
  }

  void _onClick3(){ //认知程度
    showModalBottomSheet(
        context: context,
        builder: (context) => _Mylist1(formList2)).then((result) {
          setState(() {
            if(result.isNotEmpty) {
              string3 = result['name'];
            }
        });
      }).catchError((error) {
    });
  }

  void _onClick4(){ //符合周末回家标准
    setState(() {
      if(_click4){
        _click4 = false;
      }else{
        _click4 = true;
      }
    });
  }

  void _onClick5(){ //符合出院标准
    setState(() {
      if(_click5){
        _click5 = false;
      }else{
        _click5 = true;
      }
    });
  }

  //提交
  Future _submit() async {
    String cmd = 'SAVE_SENIOR_BACK';
    String udid = 'udid';
    String userName = this.userName;
    String ticket = this.ticket;
    int seniorId = id;
    int timeFlag = 0;
    if(_click2){
      timeFlag = 0;
    }else{
      timeFlag = 0;
    }
    int cognitiveType = 0;
    if("正常" == string3){
      cognitiveType = 0;
    }else if("轻度" == string3){
      cognitiveType = 1;
    }else if("中度" == string3){
      cognitiveType = 2;
    }else if("重度" == string3){
      cognitiveType = 3;
    }
    int backable = 0;
    if(_click4){
      backable = 0;
    }else{
      backable = 1;
    }
    int outFlag = 0;
    if(_click5){
      outFlag = 0;
    }else{
      outFlag = 1;
    }
    String desc = controller.text;
    final channel = new ClientChannel('192.168.0.101',
        port: 23335,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));
    final stub = new SaveSeniorBackServerClient(channel);
    try {
      final response = await stub.saveSeniorBack(new SaveSeniorBackRequest()..cmd=cmd..udid=udid..userName=userName..ticket=ticket
        ..seniorId=seniorId..timeFlag=timeFlag..cognitiveType=cognitiveType..backable=backable..outFlag=outFlag..desc=desc);
      print('Greeter client received: ${response.toString()}');
      int code = response.code;
      if(code == 0){
        print("保存成功");
      }else{
        print("失败");
      }
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();

  }

  @override
  Widget build(BuildContext context) {
    //设置适配尺寸 (填入设计稿中设备的屏幕尺寸) 假如设计稿是按iPhone6的尺寸设计的(iPhone6 750*1334)
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return new Container(
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setWidth(1334),
      color: Color(0xFFEFEFF4),
      child: new Column(
        children: [
          //标题栏
          new Container(
            height: ScreenUtil().setWidth(130),
            color: Color(0xFF35578B),
            padding:new EdgeInsets.fromLTRB(0, ScreenUtil().setWidth(40), 0, 0),
            child: new Stack(
                children:[
                  new Container(
                    width: ScreenUtil().setWidth(75),
                    height: ScreenUtil().setWidth(90),
                    child: new FlatButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        _finsh();
                      },
                      child: new Center(
                        child: Image(
                          width: ScreenUtil().setWidth(16),
                          height: ScreenUtil().setWidth(26),
                          image: AssetImage("assets/back_icon_normal.png"),
                        ),
                      ),
                    ),
                  ),
                  new Container(
                    height: ScreenUtil().setWidth(90),
                    child: new Center(
                      child: Text(
                          '回家筛查',
                          style: TextStyle(fontSize: ScreenUtil().setSp(40),
                            color: Color(0xFFFFFFFF),
                            decoration: TextDecoration.none,)
                      ),
                    ),
                  ),
                ],
            ),
          ),

          new Expanded(
            child: new Container(
              padding:new EdgeInsets.fromLTRB(0, ScreenUtil().setWidth(20), 0, 0),
              child: new Scaffold(
                body: new SingleChildScrollView(
                    child: new Container(
                      color: Color(0xFFFFFFFF),
                      child: new Column (
                        children: <Widget>[

                          //服务对象
                          new Container(
                            width: ScreenUtil().setWidth(750),
                            height: ScreenUtil().setWidth(80),
                            padding:new EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: new FlatButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                _onClick1();
                              },
                              child: new Container(
                                width: ScreenUtil().setWidth(750),
                                height: ScreenUtil().setWidth(80),
                                padding:new EdgeInsets.fromLTRB(ScreenUtil().setWidth(37), 0, ScreenUtil().setWidth(37), 0) ,
                                child: Row(
                                  children: <Widget>[
                                    new Expanded(
                                      child: new Container(
                                        alignment: Alignment.centerLeft,
                                        height: ScreenUtil().setWidth(80),
                                        child: Text(
                                            '服务对象',
                                            style: TextStyle(fontSize: ScreenUtil().setSp(30),
                                              color: Color(0xFF000000),
                                              decoration: TextDecoration.none,)
                                        ),
                                      ),
                                    ),
                                    new Container(
                                      alignment: Alignment.centerRight,
                                      padding:new EdgeInsets.fromLTRB(0, 0, ScreenUtil().setWidth(20), 0),
                                      child: Text(
                                          '$string1',
                                          style: TextStyle(fontSize: ScreenUtil().setSp(30),
                                            color: Color(0xFF000000),
                                            decoration: TextDecoration.none,),
                                          overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    new Container(
                                      alignment: Alignment.centerLeft,
                                      height: ScreenUtil().setWidth(80),
                                      child: Image(
                                        width: ScreenUtil().setWidth(16),
                                        height: ScreenUtil().setWidth(26),
                                        image: AssetImage("assets/zizhigongdan_youjiantouhei.png"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          //分割线
                          new Container(
                            padding: new EdgeInsets.fromLTRB(ScreenUtil().setWidth(37), 0, 0 ,0),
                            child: new Divider(height: ScreenUtil().setWidth(1), color: const Color(0xFFE7E7E8)),
                          ),

                          //2017.09.01前入住
                          new Container(
                            width: ScreenUtil().setWidth(750),
                            height: ScreenUtil().setWidth(80),
                            padding:new EdgeInsets.fromLTRB(0, 0, 0, 0) ,
                            child: new FlatButton(
                              padding: EdgeInsets.zero,
                              onPressed: null,
                              child: new Container(
                                width: ScreenUtil().setWidth(750),
                                height: ScreenUtil().setWidth(80),
                                padding:new EdgeInsets.fromLTRB(ScreenUtil().setWidth(37), 0, ScreenUtil().setWidth(37), 0) ,
                                child: Row(
                                  children: <Widget>[
                                    new Expanded(
                                      child: new Container(
                                        alignment: Alignment.centerLeft,
                                        height: ScreenUtil().setWidth(80),
                                        child: Text(
                                            '2017.09.01前入住',
                                            style: TextStyle(fontSize: ScreenUtil().setSp(30),
                                              color: Color(0xFF000000),
                                              decoration: TextDecoration.none,)
                                        ),
                                      ),
                                    ),

                                    new Container(
                                      alignment: Alignment.centerLeft,
                                      height: ScreenUtil().setWidth(80),
                                      child: new GestureDetector(
                                        onTap: () {
                                          _onClick2();
                                        },
                                        child: Image(
                                          width: ScreenUtil().setWidth(82),
                                          height: ScreenUtil().setWidth(50),
                                          image: AssetImage(_click2 ? "assets/button_on.png" : "assets/button_off.png"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          //分割线
                          new Container(
                            padding: new EdgeInsets.fromLTRB(ScreenUtil().setWidth(37), 0, 0 ,0),
                            child: new Divider(height: ScreenUtil().setWidth(1), color: const Color(0xFFE7E7E8)),
                          ),

                          //认知程度
                          new Container(
                            width: ScreenUtil().setWidth(750),
                            height: ScreenUtil().setWidth(80),
                            padding:new EdgeInsets.fromLTRB(0, 0, 0, 0) ,
                            child: new FlatButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                _onClick3();
                              },
                              child: new Container(
                                width: ScreenUtil().setWidth(750),
                                height: ScreenUtil().setWidth(80),
                                padding:new EdgeInsets.fromLTRB(ScreenUtil().setWidth(37), 0, ScreenUtil().setWidth(37), 0) ,
                                child: Row(
                                  children: <Widget>[
                                    new Expanded(
                                      child: new Container(
                                        alignment: Alignment.centerLeft,
                                        height: ScreenUtil().setWidth(80),
                                        child: Text(
                                            '认知程度',
                                            style: TextStyle(fontSize: ScreenUtil().setSp(30),
                                              color: Color(0xFF000000),
                                              decoration: TextDecoration.none,)
                                        ),
                                      ),
                                    ),
                                    new Container(
                                      alignment: Alignment.centerRight,
                                      padding:new EdgeInsets.fromLTRB(0, 0, ScreenUtil().setWidth(20), 0),
                                      child: Text(
                                          '$string3',
                                          style: TextStyle(fontSize: ScreenUtil().setSp(30),
                                            color: Color(0xFF000000),
                                            decoration: TextDecoration.none,)
                                      ),
                                    ),
                                    new Container(
                                      alignment: Alignment.centerLeft,
                                      height: ScreenUtil().setWidth(80),
                                      child: Image(
                                        width: ScreenUtil().setWidth(16),
                                        height: ScreenUtil().setWidth(26),
                                        image: AssetImage("assets/zizhigongdan_youjiantouhei.png"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          //分割线
                          new Container(
                            padding: new EdgeInsets.fromLTRB(ScreenUtil().setWidth(37), 0, 0 ,0),
                            child: new Divider(height: ScreenUtil().setWidth(1), color: const Color(0xFFE7E7E8)),
                          ),

                          //符合周末回家标准
                          new Container(
                            width: ScreenUtil().setWidth(750),
                            height: ScreenUtil().setWidth(80),
                            padding:new EdgeInsets.fromLTRB(0, 0, 0, 0) ,
                            child: new FlatButton(
                              padding: EdgeInsets.zero,
                              onPressed: null,
                              child: new Container(
                                width: ScreenUtil().setWidth(750),
                                height: ScreenUtil().setWidth(80),
                                padding:new EdgeInsets.fromLTRB(ScreenUtil().setWidth(37), 0, ScreenUtil().setWidth(37), 0) ,
                                child: Row(
                                  children: <Widget>[
                                    new Expanded(
                                      child: new Container(
                                        alignment: Alignment.centerLeft,
                                        height: ScreenUtil().setWidth(80),
                                        child: Text(
                                            '符合周末回家标准',
                                            style: TextStyle(fontSize: ScreenUtil().setSp(30),
                                              color: Color(0xFF000000),
                                              decoration: TextDecoration.none,)
                                        ),
                                      ),
                                    ),

                                    new Container(
                                      alignment: Alignment.centerLeft,
                                      height: ScreenUtil().setWidth(80),
                                      child: new GestureDetector(
                                        onTap: () {
                                          _onClick4();
                                        },
                                        child: Image(
                                          width: ScreenUtil().setWidth(82),
                                          height: ScreenUtil().setWidth(50),
                                          image: AssetImage(_click4 ? "assets/button_on.png" : "assets/button_off.png"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          //分割线
                          new Container(
                            padding: new EdgeInsets.fromLTRB(ScreenUtil().setWidth(37), 0, 0 ,0),
                            child: new Divider(height: ScreenUtil().setWidth(1), color: const Color(0xFFE7E7E8)),
                          ),

                          //符合出院标准
                          new Container(
                            width: ScreenUtil().setWidth(750),
                            height: ScreenUtil().setWidth(80),
                            padding:new EdgeInsets.fromLTRB(0, 0, 0, 0) ,
                            child: new FlatButton(
                              padding: EdgeInsets.zero,
                              onPressed: null,
                              child: new Container(
                                width: ScreenUtil().setWidth(750),
                                height: ScreenUtil().setWidth(80),
                                padding:new EdgeInsets.fromLTRB(ScreenUtil().setWidth(37), 0, ScreenUtil().setWidth(37), 0) ,
                                child: Row(
                                  children: <Widget>[
                                    new Expanded(
                                      child: new Container(
                                        alignment: Alignment.centerLeft,
                                        height: ScreenUtil().setWidth(80),
                                        child: Text(
                                            '符合出院标准',
                                            style: TextStyle(fontSize: ScreenUtil().setSp(30),
                                              color: Color(0xFF000000),
                                              decoration: TextDecoration.none,)
                                        ),
                                      ),
                                    ),

                                    new Container(
                                      alignment: Alignment.centerLeft,
                                      height: ScreenUtil().setWidth(80),
                                      child: new GestureDetector(
                                        onTap: () {
                                          _onClick5();
                                        },
                                        child: Image(
                                          width: ScreenUtil().setWidth(82),
                                          height: ScreenUtil().setWidth(50),
                                          image: AssetImage(_click5 ? "assets/button_on.png" : "assets/button_off.png"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          //备注 ...
                          new Container(
                            width: ScreenUtil().setWidth(750),
                            height: ScreenUtil().setWidth(300),
                            color: Color(0xFFEFEFF4),
                            child: new Center(
                              child: new Container(
                                width: ScreenUtil().setWidth(690),
                                height: ScreenUtil().setWidth(250),
                                decoration: new BoxDecoration(
                                  border: new Border.all(color: Color(0xFFFFFFFF), width: 0.5), // 边色与边宽度
                                  color: Color(0xFFFFFFFF), // 底色
                                  borderRadius: new BorderRadius.circular(ScreenUtil().setWidth(20)), // 圆角度
                                ),
                                child: new TextField(
                                  //获取方式 String value=controller.text
                                  controller: controller,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.transparent)
                                    ),
                                    contentPadding: new EdgeInsets.fromLTRB(ScreenUtil().setWidth(25), ScreenUtil().setWidth(25), ScreenUtil().setWidth(25), ScreenUtil().setWidth(25)) ,
                                    fillColor: Colors.transparent, filled: true,
                                    disabledBorder: InputBorder.none,
                                    enabledBorder:  InputBorder.none,
                                    focusedBorder:  InputBorder.none,
                                    hintText: "备注 ..."
                                  ),
                                  //键盘类型
                                  keyboardType: TextInputType.text,
                                  textAlign: TextAlign.left,
                                  obscureText: false,  //是否隐藏输入
                                  //输入文本的样式
                                  style: TextStyle(fontSize: ScreenUtil().setSp(30), color: Color(0xFF000000)),
                                  //最大行数
                                  maxLines: 4,
                                  //限制输入的 最大长度  TextField右下角没有输入数量的统计字符串
                                  maxLength: 500,
                                  //光标颜色
                                  cursorColor: Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),

                          //提 交
                          new Container(
                            width: ScreenUtil().setWidth(750),
                            height: ScreenUtil().setWidth(480),
                            color: Color(0xFFEFEFF4),
                            child: new Container(
                              width: ScreenUtil().setWidth(680),
                              margin: EdgeInsets.only(left: ScreenUtil().setHeight(40),  right: ScreenUtil().setHeight(40), top: ScreenUtil().setHeight(360), bottom: ScreenUtil().setHeight(40)),
                              height: ScreenUtil().setHeight(80),
                              child: new RaisedButton(
                                  onPressed: () {
                                    _submit();
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(ScreenUtil().setHeight(10)),
                                      topLeft: Radius.circular(ScreenUtil().setHeight(10)),
                                      bottomRight: Radius.circular(ScreenUtil().setHeight(10)),
                                      bottomLeft: Radius.circular(ScreenUtil().setHeight(10)),
                                    ),
                                  ),
                                  child: new Text(
                                      '提 交',
                                      style: TextStyle(fontSize: ScreenUtil().setWidth(36),
                                          color: Color(0xFFFFFFFF)
                                      )
                                  ),
                                  color: Color(0xFFED934D)
                              ),
                            ),

                          ),

                        ],
                      ),
                    ),

                ),
                ),
              ),
            ),
//          )


        ],
      ),
    );
  }
}

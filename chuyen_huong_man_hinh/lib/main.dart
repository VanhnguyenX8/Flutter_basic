import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
home: new FisrtScreen(),
));
class FisrtScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Màn hình 1'),),

      body: Center(

        child: RaisedButton(

        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen()));
        },
        child: Text('Chuyển sang màn hình 2')
        ,),
      ),

    );
  }
}
class SecondScreen extends StatelessWidget {
  final _name_to_show_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text('Second Screen'),),
        body: Center(
            child: Column(
              children: <Widget>[
                Text(' Ngày hôm nay của bạn như thế nào :))'),
                Text('Ngày mới thật là vui vẻ nhé bạn',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.red,
                      wordSpacing: 20,
                      backgroundColor: Colors.white10,
                    ),),
                TextField(decoration: InputDecoration(hintText: 'Nhập tên'),
                  controller: _name_to_show_controller,),
                RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => third()));
                    },
                    child: Text('chuyển sang màn hình tiếp theo')
                ),
              ],)
        ));
  }
}
class third extends StatelessWidget {

  final _name_to_show_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text('Second Screen'),),
        body: Center(
            child: Column(
              children: <Widget>[
                Text(' nguyen viet anh'),

                RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => FisrtScreen()));
                    },
                    child: Text('Start new screen',
                    style: TextStyle(
                      color: Colors.blue,
                      backgroundColor: Colors.deepPurple,
                    ),)
                ),
              ],)
        ));
  }
}





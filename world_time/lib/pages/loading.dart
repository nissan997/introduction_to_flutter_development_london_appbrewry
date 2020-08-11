import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

  String time = 'loading';

class _LoadingState extends State<Loading> {
  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'Berlin',flag: 'germany.png',url: 'Europe/Berlin');
    await instance.getTime();
    print(instance.time);
    setState(() {
      time = instance.time;
    });
  }

  @override
  void initState() {
    super.initState();
    print('Init ran');
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Text(time),
      ),
    );
  }
}
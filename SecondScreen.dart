import 'package:flutter/material.dart';
import 'main.dart';

class SecondScreen extends StatelessWidget {
  var nameFromDashboard;
  var regnoFromDashboard;
  SecondScreen(this.nameFromDashboard,this.regnoFromDashboard);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Your Details",),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(child: Center(child: Text("Name : $nameFromDashboard",style: TextStyle(fontSize: 20),)),),
          SizedBox(height: 20,),
          Container(child: Center(child: Text("Register Number : $regnoFromDashboard",style: TextStyle(fontSize: 20),)),),
        ],

      ),
    );
  }
}

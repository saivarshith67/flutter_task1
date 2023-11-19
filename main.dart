import 'package:flutter/material.dart';
import 'SecondScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
        useMaterial3: true,
        fontFamily: 'Montserrat',
      ),
      home: DashboardScreen(),

    );
  }
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController regnoController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sai Varshith Task1",),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                keyboardType: TextInputType.name,


                decoration: InputDecoration(
                  hintText: "Name",

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(width: 2, color: Colors.orangeAccent.shade400)
                  ),



                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(width: 2)
                  ),
                ),
              ),

              SizedBox(height: 15,),

              TextField(
                controller: regnoController,
                keyboardType: TextInputType.number,

                decoration: InputDecoration(
                  hintText: "Register Number",

                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(width: 2, color: Colors.orangeAccent.shade400)
                  ),

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(width: 2)
                  ),
                ),
              ),

              SizedBox(height: 15,),

              ElevatedButton(
                  onPressed: () {
                    var name = nameController.text.toString();
                    var regno = regnoController.text.toString();
                    // print("Name     : $name\nRegister number : $regno");
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(name,regno)));
                  } ,
                  child: Container(
                    child: Center(
                        child: Text("Submit")
                    ),
                    width: 300,
                    height: 50,)

              ),



            ],
          ),
        ),
      ),
    );
  }
}

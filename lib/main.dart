import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StackContainer(),
    );
  }
}
class StackContainer extends StatelessWidget {
  const StackContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                color: Colors.purple,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                color: Colors.white,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical:70),
            child: Home(),
          )
        ],
      ),
    );
  }
}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
          colors: [
            Colors.purple.shade400,
            Colors.purple.shade600,
            Colors.purple.shade800,
            Colors.purple.shade900
          ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
            ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.airplanemode_on,
            size:50,
            color:Colors.white),
            SizedBox(
              height: 10,
            ),
            Text('\$09.99',
              style: TextStyle(
                color:Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold)
              ),
            Text('per month',
              style:TextStyle(
                color: Colors.purple.shade200)
              ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.purple.shade300,
              thickness: 4,
            ),
            SizedBox(
              height: 10,
            ),
          Text('STARTUP',
             style: TextStyle(
              color:Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold)
          ),
            SizedBox(
              height: 10,
            ),
            Text('Disk Space - 200GB',
                style:TextStyle(
                    color: Colors.white)
            ),

            Text('Bandwidth - 30GB',
                style:TextStyle(
                    color: Colors.white)
            ),
            Text('Databases - 03',
                style:TextStyle(
                    color: Colors.white)
            ),
            Text('E-mail Accounts - 10',
                style:TextStyle(
                    color: Colors.white)
            ),
            Text('24/7 support - No',
                style:TextStyle(
                    color: Colors.grey)
            ),
            Text('E-mail support - Yes',
                style:TextStyle(
                  color: Colors.white)
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              style: ButtonStyle(
                padding:
                    MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(
                      horizontal: 60,
                      vertical: 15)),
                backgroundColor:
                    MaterialStatePropertyAll<Color>(Colors.white),
                shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                  )
                ),
                ),
              onPressed: (){},
              child: Text(
              "SIGN UP",
                style: TextStyle(color: Colors.purple.shade900,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
    );
  }
}

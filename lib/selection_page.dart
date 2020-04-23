import 'package:flutter/material.dart';
import 'package:homemansamusa/preescolar/navigationBarPreescolar.dart';
import 'package:homemansamusa/primaria/navigationBarPrimaria.dart';

import 'bachillerato/bottomNavigationBar.dart';

class SelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Image.asset("assets/logo1.png", height: 120, width: 145,)),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("¿Qué quieres aprender hoy?", style: TextStyle(fontSize: 23, color: Color(0xffAC7830), ),),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => NavigationBarPreescolar()));
                        },
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(image: AssetImage("assets/cleopatra.jpg"),
                                  fit: BoxFit.cover)),


                        ),
                      ),
                      Text("Preescolar", style: TextStyle(color: Color(0xffAC7830), fontSize: 20, fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => NavigationBarPrimaria()));
                        },
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(image: AssetImage("assets/latinoamerica.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Text("Primaria", style: TextStyle(color: Color(0xffAC7830), fontSize: 20, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => NavigationBarBachiller()));
                    },
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(image: AssetImage("assets/sabiasque.jpg"),
                              fit: BoxFit.cover)),

                    ),
                  ),
                  Text("Bachillerato", style: TextStyle(color: Color(0xffAC7830), fontSize: 20, fontWeight: FontWeight.bold),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

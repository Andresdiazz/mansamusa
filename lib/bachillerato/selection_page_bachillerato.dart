import 'package:flutter/material.dart';
import 'package:homemansamusa/bachillerato/bottomNavigationBar.dart';
import 'package:homemansamusa/preescolar/navigationBarPreescolar.dart';
import 'package:homemansamusa/primaria/navigationBarPrimaria.dart';

class SelectionPageBachillerato extends StatelessWidget {
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
              Text("¿Qué quieres aprender?", style: TextStyle(fontSize: 23, color: Color(0xffAC7830)),),
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
                          decoration: BoxDecoration(color: Color(0xffAC7830), borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(image: AssetImage("assets/cleopatra.jpg"),
                                  fit: BoxFit.cover)),

                        ),
                      ),
                      Text("Preescolar", style: TextStyle(color: Color(0xffAC7830), fontSize: 23),)
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
                          decoration: BoxDecoration(color: Colors.blue[800], borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(image: AssetImage("assets/latinoamerica.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Text("Primaria", style: TextStyle(color: Color(0xffAC7830), fontSize: 23),)
                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
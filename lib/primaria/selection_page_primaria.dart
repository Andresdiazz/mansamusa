import 'package:flutter/material.dart';
import 'package:homemansamusa/bachillerato/bottomNavigationBar.dart';
import 'package:homemansamusa/preescolar/navigationBarPreescolar.dart';

class SelectionPagePrimaria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Image.asset("assets/logo2.png", height: 120, width: 145,)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("¿Qué quieres aprender?", style: TextStyle(fontSize: 23, color: Theme.of(context).primaryColor),),
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
                          decoration: BoxDecoration( borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(image: AssetImage("assets/cleopatra.jpg"),
                                  fit: BoxFit.cover)),

                        ),
                      ),
                      Text("Preescolar", style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 23),)
                    ],
                  ),
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
                          decoration: BoxDecoration(color: Theme.of(context).primaryColor, borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(image: AssetImage("assets/sabiasque.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Text("Bachillerato", style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 23),)
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

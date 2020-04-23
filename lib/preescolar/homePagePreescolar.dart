import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class HomePagePreescolar extends StatefulWidget {
  @override
  _HomePagePreescolarState createState() => _HomePagePreescolarState();
}

class _HomePagePreescolarState extends State<HomePagePreescolar> {


  @override
  Widget build(BuildContext context) {

    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Image.asset("assets/logo2.png", height: 120, width: 145,)),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white
        ),
        child: ListView(
          children: [
            Portadas(context),
            SizedBox(height: 15,),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("Eje Temático", style: TextStyle(fontSize: 23, color: Theme.of(context).primaryColor
                  //Color(0xffAC7830)
                  ),),
                ),
                SizedBox(width: 10,),
                Expanded(child: Container( height: 1.5, decoration: BoxDecoration(color: Theme.of(context).primaryColor),))
              ],
            ),
            SizedBox(height: 15,),
            EjeTematico(),
            SizedBox(height: 15,),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("Temas de Interés", style: TextStyle(fontSize: 23, color: Theme.of(context).primaryColor),),
                ),
                SizedBox(width: 10,),
                Expanded(child: Container( height: 1.5, decoration: BoxDecoration(color: Theme.of(context).primaryColor),))
              ],
            ),
            SizedBox(height: 15,),
            TemasInteres(),
            SizedBox(height: 15,),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("Aprende Jugando", style: TextStyle(fontSize: 23, color: Theme.of(context).primaryColor),),
                ),
                SizedBox(width: 10,),
                Expanded(child: Container( height: 1.5, decoration: BoxDecoration(color: Theme.of(context).primaryColor),))
              ],
            ),
            SizedBox(height: 15,),
            EjeTematico()
          ],
        ),
      ),
      //bottomNavigationBar: NavigationBar()
    );
  }
}

Widget Portadas(BuildContext context){
  return InkWell(
    onTap: (){
      print("Portadas");
    },
    child: SizedBox(
      height: 190,
      width: double.infinity,
      child: Carousel(
        boxFit: BoxFit.cover,
        autoplay: true,
        autoplayDuration: Duration(seconds: 5),
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotSpacing: 15.0,
        dotColor: Colors.white30,
        indicatorBgPadding: 5.0,
        moveIndicatorFromBottom: 180.0,
        dotIncreasedColor: Colors.white,
        dotBgColor: Colors.transparent,
        dotPosition: DotPosition.topRight,
        showIndicator: true,
        images: [
          AssetImage("assets/asia.jpg"),
          AssetImage("assets/niña.jpg"),
          AssetImage("assets/latinoamerica.jpg"),
          AssetImage("assets/pares.jpg"),
        ],
      ),
    ),
  );
}

Widget EjeTematico(){
  return Padding(
    padding: const EdgeInsets.only(left: 15),
    child: Container(
      height: 82,
      child: ListView(
        scrollDirection: Axis.horizontal,

        children: [
          InkWell(
            onTap: (){

            },
            child: Card(

                child: Container(
                  width: 123,
                  height: 82,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(image: AssetImage("assets/asia.jpg"), fit: BoxFit.cover)
                  ),


                )
            ),
          ),
          InkWell(
            onTap: (){

            },
            child: Card(

                child: Container(
                  width: 123,
                  height: 82,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(image: AssetImage("assets/niña.jpg"), fit: BoxFit.cover)
                  ),

                  //child: Image.network("https://images.unsplash.com/photo-1523207911345-32501502db22?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", fit: BoxFit.cover,),
                )
            ),
          ),
          InkWell(
            onTap: (){

            },
            child: Card(

                child: Container(
                  width: 123,
                  height: 82,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(image: AssetImage("assets/pares.jpg"), fit: BoxFit.cover)
                  ),

                  //child: Image.network("https://images.unsplash.com/photo-1535016120720-40c646be5580?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", fit: BoxFit.cover,),
                )
            ),
          ),
          InkWell(
            onTap: (){

            },
            child: Card(

                child: Container(
                  width: 123,
                  height: 82,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(image: AssetImage("assets/katerine.jpg"), fit: BoxFit.cover)
                  ),

                 // child: Image.network("https://images.unsplash.com/photo-1517604931442-7e0c8ed2963c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", fit: BoxFit.cover,),
                )
            ),
          ),
        ],
      ),
    ),
  );
}

Widget TemasInteres(){
  return Padding(
    padding: const EdgeInsets.only(left: 15),
    child: Container(
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20)
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,

        children: [
          InkWell(
            onTap: (){

            },
            child: Card(

                child: Container(
                  width: 123,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(image: AssetImage("assets/AFRO.png"), fit: BoxFit.cover)
                  ),
                  //child: Image.network("https://images.unsplash.com/photo-1539786723186-577e290c1bee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", fit: BoxFit.cover,),
                )
            ),
          ),
          InkWell(
            onTap: (){

            },
            child: Card(

                child: Container(
                  width: 123,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(image: AssetImage("assets/afro01.png"), fit: BoxFit.cover)
                  ),

                  //child: Image.network("https://images.unsplash.com/photo-1512070679279-8988d32161be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", fit: BoxFit.cover,),
                )
            ),
          ),
          InkWell(
            onTap: (){

            },
            child: Card(

                child: Container(
                  width: 123,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(image: AssetImage("assets/afro3.png"), fit: BoxFit.cover)
                  ),

                  //child: Image.network("https://images.unsplash.com/photo-1547130542-00f463cf8c0c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", fit: BoxFit.cover,),
                )
            ),
          ),
          InkWell(
            onTap: (){

            },
            child: Card(

                child: Container(
                  width: 123,
                  height: 82,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(image: AssetImage("assets/afro05.png"), fit: BoxFit.cover)
                  ),

                  //child: Image.network("https://images.unsplash.com/photo-1524245510371-a10ac6be9ec9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", fit: BoxFit.cover,),
                )
            ),
          ),
        ],
      ),
    ),
  );
}

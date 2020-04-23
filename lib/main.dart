
import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart' ;


void main() => runApp(Sensores());


class Sensores extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Estado();
}
class Estado extends State{
  GyroscopeEvent giroscopio;

  @override
  void initState(){
    super.initState();
    gyroscopeEvents.listen((GyroscopeEvent event){
      setState(() {
        giroscopio = event;

      });
    });
  }

  @override
  Widget build(BuildContext context){


    int opaInit =  255 ;
    double opa = giroscopio.z.abs()*75 ;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Giroscopio'
              'Z: ${giroscopio.z.toInt()}'
          ),
        ),
       body:
      Container(
      // color: Colors.green,
      child: Text("Contenedor", textAlign: TextAlign.center),
      padding: EdgeInsets.only(top:40, bottom: 40),
      decoration: BoxDecoration(
          color: Color.fromARGB( opaInit - opa.toInt() ,255, 0, 0 ) ,
          shape: BoxShape.circle,


      ),
      margin: EdgeInsets.all(60),
    )
      )
    );


  }



}

















/*(3)
void main() => runApp(ClaseHoy());

class ClaseHoy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Imagenes"),),
        body:
          Container(
             // color: Colors.green,
              child: Text("Contenedor"),
              padding: EdgeInsets.only(
                top:40,
                bottom: 40),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.blueGrey,
                  width: 23
                ),
                //borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green,
                    offset: Offset(5.0, 5.0),
                    blurRadius: 5.0

                  )
                  ]
              ),
              margin: EdgeInsets.all(60),


        )

        )

        );
  }
}





*/








/*(2)
class MiWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.arrow_back),
            title: Text("Widget"),
            actions: <Widget>[
              Icon(Icons.search),
              Icon(Icons.menu)
            ],
            backgroundColor: Colors.green
            ),
          floatingActionButton: FloatingActionButton(child: Icon(Icons.message), backgroundColor: Colors.green),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(child: Text('Titulo', style: TextStyle(color: Colors.black)), decoration: BoxDecoration(color: Colors.grey)),
                ListTile(title: Text("Contactos")),
                ListTile(title: Text("Telefonos")),
                ListTile(title: Text("Acerca de"))
              ]
            ) ,
          ),
        )
          );

}

*/


/*(1)
Text("Esto es el cuerpo de mi Scafold", style: TextStyle(
              color: Color.fromRGBO(230, 23, 123, 1),
              backgroundColor: Colors.amberAccent,
              fontSize: 34,
              fontWeight: FontWeight.w200,
              fontStyle: FontStyle.italic,
              fontFamily: "Lato",
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.black12,
              decorationStyle: TextDecorationStyle.wavy,
              decorationThickness: 3
*/


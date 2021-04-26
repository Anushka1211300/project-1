


import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map_pin extends StatefulWidget {
  @override
  _Map_pinState createState() => _Map_pinState();
}

class _Map_pinState extends State<Map_pin> {
//Latitude: 28.681175 / N 28° 40' 52.231''
 //Longitude: 77.376603 / E 77° 22' 35.771''
  final CameraPosition _initialPosition = const CameraPosition(target: LatLng(28.681175, 77.376603),zoom: 15.0);
  GoogleMapController  _controller;

  final List<Marker> _markers = [];
  
  @override
  void initState(){
     super.initState();
     _markers.add(Marker(
       markerId: MarkerId('myMarker'),
       draggable: false,
       onTap: (){
         print('Marker Tapped 1');
       },
       position: LatLng(28.681175, 77.376603)
       ),

     );
  }






  addMarker( cordinate){
int id = Random().nextInt(100);

    setState(() {
     _markers.add(Marker(position: cordinate, markerId: MarkerId(id.toString())));
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Aradhana")),
      body: Stack(
              children: [Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GoogleMap(initialCameraPosition: _initialPosition,
            mapType: MapType.normal,
            
            markers: Set.from(_markers),
            onMapCreated: mapCreated,
            
           onCameraMove: (cordinate){
     
                  _controller.animateCamera(CameraUpdate.newCameraPosition(cordinate));
                  addMarker(cordinate);
            } ,
            
            ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: InkWell(
            onTap: movetolnj,
            child: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.green

              ),
              child: Icon(Icons.forward, color: Colors.white),
              )
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: InkWell(
            onTap: movetogzb,
            child: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.green

              ),
              child: Icon(Icons.backspace ,color: Colors.white),
              )
          ),
        ),
        
        ]
      ),
     
    );
  }
   void mapCreated(controller){

     setState(() {
       _controller= controller;
     });
   }

   void movetolnj(){
     _controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(27.055189,27.055189),zoom: 25.0
     ,tilt:45 )));
   }

   void movetogzb(){
     _controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(28.681175, 77.376603),zoom: 25.0
     ,tilt:45 )));
   }
}
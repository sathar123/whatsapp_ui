

import 'package:flutter/material.dart';


class Camera_view extends StatelessWidget {
  const Camera_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset('assets/images/whp.jpeg'),
          Text('Introducing communities',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(15),
          child: Text('Easily organize your related groups and send announcements. Now, your communities, like neighborhoods or schools, can have their own space.',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 16),maxLines: 4,textAlign: TextAlign.center,),),
          ElevatedButton(onPressed: null, child: Text('START YOUR COMMUNITY',style: TextStyle(color: Colors.white,fontSize: 15),),style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.teal),
            minimumSize: MaterialStateProperty.all(Size(300, 40)),
             maximumSize: MaterialStateProperty.all(Size(400, 40))

          ),)

        ],
      )

    );
  }
}

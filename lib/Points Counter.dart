import'package:flutter/material.dart';
class PointsCounter extends StatefulWidget {
  const PointsCounter({Key? key}) : super(key: key);

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int counter = 0;
  int counter2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Points Counter'),
        centerTitle:true,
        backgroundColor: Colors.orange,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 500,
                child: Column(
                  children: [
                    Text('Team A',style: TextStyle(fontSize: 32),),
                    Text('$counter',style: TextStyle(fontSize: 150),),
                    ElevatedButton(style:ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(150, 50)
                    ),onPressed: (){
                      setState(() {
                        counter++;
                        print(counter);
                      });
                    }, child:Text('Add 1 Point',style: TextStyle(fontSize: 18,color: Colors.black),)),
                    Spacer(flex: 1,),
                    ElevatedButton(style:ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50)
                    ),onPressed: (){
                      setState(() {
                        counter= counter + 2;
                        print(counter);
                      });
                    }, child:Text('Add 2 Point',style: TextStyle(fontSize: 18,color: Colors.black),)),
                    Spacer(flex: 1,),

                    ElevatedButton(style:ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50)
                    ),onPressed: (){
                      setState(() {
                        counter= counter + 3;
                        print (counter);
                      });
                    }, child:Text('Add 3 Point',style: TextStyle(fontSize: 18,color: Colors.black),)),
                    Spacer(flex: 12,),


                  ],
                ),
              ),
              Container(
                height: 500,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 50,
                  endIndent: 50,
                ),
              ),
              Container(
                height: 500,
                child: Column(
                  children: [
                    Text('Team B',style: TextStyle(fontSize: 32),),
                    Text('$counter2',style: TextStyle(fontSize: 150),),
                    ElevatedButton(style:ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50)
                    ),onPressed: (){
                      setState(() {
                        counter2++;
                        print(counter2);
                      });
                    }, child:Text('Add 1 Point',style: TextStyle(fontSize: 18,color: Colors.black),)),
                    Spacer(flex: 1,),
                    ElevatedButton(style:ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50)
                    ),onPressed: (){
                      setState(() {
                        counter2= counter2 + 2;
                        print(counter2);
                      });
                    }, child:Text('Add 2 Point',style: TextStyle(fontSize: 18,color: Colors.black),)),
                    Spacer(flex: 1,),

                    ElevatedButton(style:ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50)
                    ),onPressed: (){
                      setState(() {
                        counter2=counter2+3;
                        print(counter2);
                      });
                    }, child:Text('Add 3 Point',style: TextStyle(fontSize: 18,color: Colors.black),)),
                    Spacer(flex: 12,),


                  ],
                ),
              ),

            ],
          ),
          ElevatedButton(style:ElevatedButton.styleFrom(
              primary: Colors.orange,
              minimumSize: Size(150, 50)
          ),onPressed: (){
            setState(() {
              counter = counter=0;
              print(counter);
              counter2 = counter2=0;
              print(counter2);


            });
          }, child:Text('Reset',style: TextStyle(fontSize: 18,color: Colors.black),)),

        ],
      )
    );
  }
}

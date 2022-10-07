import 'package:flutter/material.dart';


class parties extends StatefulWidget {


  const parties({super.key});

  @override
  State<parties> createState() => partiesState();
}

class partiesState extends State<parties> {
  static List<dynamicitem> dynamiclist=[];
  static List <String> data=[];

    static addDynamic(){
    partiesState.dynamiclist.add(new dynamicitem());
  }


  @override
  Widget build(BuildContext context) {

  

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
         icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        }),
        title: Text('Parties'),
      ),
      body: new Container(
        child: new Column(
          children: <Widget> [
            new Flexible(child: new ListView.builder(itemBuilder: (_,index)=dynamiclist[index]))
          ],
        )
      ) 

      



    );
  }
}

class dynamicitem extends StatelessWidget {
  const dynamicitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Row(children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            new Text(partiesState.data[-1]),
          ]),
        )
      ],)
    );
  }
}
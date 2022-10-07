import 'package:flutter/material.dart';
import 'package:myapp/parties.dart';



 class StatefulDialog extends StatefulWidget {
  @override
  const StatefulDialog({Key? key}) : super(key: key);
  State<StatefulDialog> createState() => _StatefulDialogState();
}

class _StatefulDialogState extends State<StatefulDialog> {

  
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _textEditingController = TextEditingController();


  Future<void> showInformationDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          bool isChecked = false;
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              content: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        controller: _textEditingController,
                        validator: (value) {
                          return value!.isNotEmpty ? null : "Enter the name of the party";
                        },
                        decoration:
                            const InputDecoration(hintText: "Enter the name of the party"),
                      ),]
                     
                    
                     
                  )),
              title: Text('Create a party'),
              actions: <Widget>[
                InkWell(
                  child: Text('OK   '),
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      // Do something like updating SharedPreferences or User Settings etc.
                      partiesState.data.add(_textEditingController.text);
                      partiesState.addDynamic();
                      Navigator.of(context).pop();
                    }
                  },
                ),
              ],
            );
          });
        });
  }
  
  @override
  Widget build(BuildContext context) {

    Widget logo= Container(
      padding: const EdgeInsets.all(20.0),
      child: Row(children: [ Expanded(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      Text.rich( 
        TextSpan(children: [
     const TextSpan(text: 'going', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40.0)),
     const TextSpan(text: 'Dutch', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40.0,color: Colors.blue)),
        ]),),

      ]))]));

      Widget btn1= Container(

child: Row(
           children:[  Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [ Container(
              padding: EdgeInsets.all(20.0),
              height: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(15.0),
                ),
                
  onPressed: () async {
                await showInformationDialog(context);
              },


  child: Text("Create a Party",style: TextStyle(fontSize: 20.0),),
),)]))])


      );

      Widget btn2= Container(

child: Row(
           children:[  Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [ Container(
              padding: EdgeInsets.all(20.0),
              height: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(15.0),
                ),
                
  onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const parties()),
  );
              },


  child: Text("Parties→",style: TextStyle(fontSize: 20.0),),
),)]))])


      );
      
      
     
      



    return Scaffold(
    appBar: AppBar(
  leading: Icon(Icons.menu),
  title: Text('Home'),
  actions: [
    Icon(Icons.add),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Icon(Icons.search),
    ),
    Icon(Icons.more_vert),
  ],
  // backgroundColor: Colors.purple,
),
body: ListView(
          children: [
            Image.asset(
              'lib/images/img.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            const Divider(color: Colors.black),
            logo,
            btn1,
            btn2,


          ],
         

               

    
            
           
              
));
  
    
    


  }
}
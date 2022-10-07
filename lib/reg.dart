import 'package:flutter/material.dart';
import 'package:myapp/main1.dart';
 

 
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
 
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
 
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Material(
        child: (Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(20.0),
      child: Row(children: [ Expanded(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      Text.rich( 
        TextSpan(children: [
     const TextSpan(text: 'going', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40.0)),
     const TextSpan(text: 'Dutch', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40.0,color: Colors.blue)),
        ]),),

      ]))])),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen  
              },
              child: const Text('Forgot Password',),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const StatefulDialog()),
  );
                  },
                )
            ),
            Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),)));
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: lvclass() ,
      debugShowCheckedModeBanner: false,
    );
  }
}
class lvclass extends StatefulWidget {
  const lvclass({Key? key}) : super(key: key);

  @override
  State<lvclass> createState() => _lvclassState();
}

class _lvclassState extends State<lvclass> {
  var contact = ["dhanvin", "durai", "praveen", "naveen", "shrill"];
  var number = ["879898", "47575868", "3667558", "334565757", "4765858587"];
  var firsttextfield = TextEditingController();
  var secondtextfield = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true,title:const Text("Contact Details"),
        )
        ,body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        const SizedBox(height: 30,),
        TextField(controller: firsttextfield,keyboardType:TextInputType.text,decoration:InputDecoration(hintText:"Contact Name" ,border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(10)),),
        ),
        const SizedBox(height: 20,),
        TextField(controller: secondtextfield,keyboardType: TextInputType.number,decoration:InputDecoration(hintText:"Contact Number" ,border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        ),const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ElevatedButton(onPressed:(){
            setState(() {
              String name = firsttextfield.text.trim();
              String num = secondtextfield.text.trim();
              contact.add(name);
              number.add(num);
            });
          }, child: const Text("save"),),],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: contact.length,
            itemBuilder: (BuildContext context, index) {
              return ListTile(
                leading: const CircleAvatar(child: Icon(Icons.person_rounded),),
                title: Text(contact[index]),
                subtitle: Text(number[index]),
              );
            },
          ),
        ),
      ],
      ),
    )

    );

  }
}


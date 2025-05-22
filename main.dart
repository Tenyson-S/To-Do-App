import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State<MainApp> createState(){ 
      return _MainAppState();
  }
}

class _MainAppState extends State<MainApp> {
  TextEditingController taskController = TextEditingController();
  List<String> tasks = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Todo List App" ,style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.bold ),),
          backgroundColor: Colors.blue,
          centerTitle: false,),
        body: Column(
          children:[
            Row(
              children: [
                Expanded(child:  Container(
                padding: EdgeInsets.all(20),
                child:TextField(
                    controller: taskController,
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter a New Task",
                  ),
                ),
              ),
             ),
                MaterialButton(
                  color: Colors.white,
                  height:55,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                
                onPressed: (){
                  setState((){
                    tasks.add(taskController.text);
                  });
              },
              child: Text("Add"),
              )
            ],
            ),
            Flexible(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index){
                return Row(children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(tasks[index],
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              
                MaterialButton(
                  child:Icon(
                    Icons.delete, 
                    color: Colors.red
                  ),
                  onPressed: (){
                    setState((){
                      tasks.removeAt(index);
                    });
                  },
                )
              ],);
              },),
            )
        ]
        ),
      ),
    );
  }
}

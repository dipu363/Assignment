
import 'package:assainment/screen/taskdetails.dart';
import 'package:flutter/material.dart';

import '../data/collection.dart';
class MyTask extends StatelessWidget {
  MyTask({Key? key}) : super(key: key);


   var task = MyCollection().assinment();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton( icon: const Icon(Icons.arrow_back_ios), onPressed: () {
          Navigator.pop(context);
        },),
        title: const Text('Assignment'),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: task.length,
            itemBuilder: (context, index) =>  SizedBox(
              height: 110,
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> TaskDetails( task: task[index])));
                },

                child: Card(
                  color: Colors.white,
                  elevation: 5,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                          child: Container(
                            height: double.infinity,
                            decoration: const BoxDecoration(
                              color:Colors.blue,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20) ),),
                              child: Center(child: Text("${task[index].id}" ,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),))),
                      ),
                      Expanded(
                        flex: 6,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(task[index].submission,style: const TextStyle(color: Colors.black87,fontSize: 14)),
                                  Text(task[index].title ,style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
                                  const SizedBox(height: 5,),
                                  Card(
                                    elevation: 10,
                                    color: Colors.blue,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(task[index].status ,style: const TextStyle(color: Colors.white,fontSize: 14),),
                                      )),

                                ],
                              )),

                      ),
                      Expanded(
                        flex: 1,
                          child: Container(
                            height: 60,
                            decoration: const BoxDecoration(
                              color:Colors.blue,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15) ),),
                            child: IconButton(icon: const Icon(Icons.remove_red_eye_outlined,color: Colors.black, size: 30,),
                              onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>TaskDetails(task:task[index])));
                              },),
                          )

                      )
                    ],
                  ),
                ),
              ),
            )
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../data/task.dart';

class TaskDetails extends StatelessWidget {

   TaskDetails( {Key? key,required this.task}) : super(key: key);
   final Task task;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()=> Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),

        ),

        centerTitle: true,
        title: Text('${task.title } ${task.id}' ,style: const TextStyle(fontSize: 24),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text('Submission : ${task.submission}',style: const TextStyle(fontSize: 14,color: Colors.grey)),
            const SizedBox(height: 20,),
            Text(task.description,style: const TextStyle(fontSize: 16,color: Colors.black)),
            const SizedBox(height: 20,),
            const Text('Status ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),),
            const SizedBox(height: 5,),
            Text(' ${task.status} ',style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green)),
            const SizedBox(height: 30,),
            ElevatedButton(
                onPressed: (){
                 Navigator.of(context).pop();
                 },
                child: Container(

                    height: 60,
                    width: double.infinity,
                  child: const Center(child:  Text('GOT IT',style: TextStyle(fontSize: 18),)),
                ),
            ),
          ],

        ),
      ),
    );
  }
}

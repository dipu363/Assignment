import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  TextEditingController taskController = TextEditingController();
  List<String> tasklist = [];
  bool _errortext = false;
  final formkye = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isDismissible: true,
              backgroundColor: Colors.white,
              elevation: 10,
              enableDrag: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              builder: (context) {
                return SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        const SizedBox(height: 20),
                        const Text('Assign Task',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
                        const SizedBox(height: 20),
                        Form(
                          key: formkye,
                          child: TextFormField(
                            showCursor: true,
                            controller: taskController,
                            keyboardType: TextInputType.text,
                            enabled: true,
                            validator: (value )=> value!.isEmpty? 'Type task':null,
                            decoration: const InputDecoration(
                                labelText: 'Type Task',
                                border:  OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)))),
                          ),
                        ),
                        const SizedBox(height: 50),
                        ElevatedButton(
                            style: const ButtonStyle(),
                            onPressed: () {
                              var task = taskController.text;
                              setState(() {
                                if (formkye.currentState!.validate()) {
                                  FocusScope.of(context).unfocus();
                                  tasklist.add(task);
                                  Navigator.pop(context);
                                  taskController.text = '';
                                }
                              });
                            },
                            child: const Text(
                              'Add',
                              style: TextStyle(fontSize: 24),
                            ))
                      ],
                    ),
                  ),
                );
              });
        },
        child: const Icon(
          Icons.add,
          size: 24,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'ToDo',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: ListView.builder(
        itemCount: tasklist.length,
        itemBuilder: (context, index) =>
            SizedBox(
              width: double.infinity,
              height: 60,
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
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                      ),
                      child: Center(
                          child: Text(
                            "${index + 1}",
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ))),
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tasklist[index],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20),
                          ),
                        ],
                      )),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      height: 60,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: 30,
                        ),
                        onPressed: () {
                          tasklist.removeAt(index);
                          setState(() {

                          });
                        },
                      ),
                    ))
              ],
          ),
        ),
            ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,

      ),
      drawer: SafeArea(
        child: Drawer(
          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                height: 150,
                width: double.infinity,
                color: Colors.blue,
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 50,

                      child: Icon(Icons.account_circle,size: 100,),
                    ),
                   Text('Dipu',style: TextStyle(fontSize: 24,color: Colors.white),),
                     Text('01933932636',style: TextStyle(fontSize: 14,color: Colors.white),),

                  ],
                ),
              ),

              const Divider(height: 2,color: Colors.blue,),

              const ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
              ),
              const Divider(height: 2,color: Colors.blue,),
              const ListTile(
                leading: Icon(Icons.list),
                title: Text('My Task'),
              ),
              const Divider(height: 2,color: Colors.blue,),
              const ListTile(
                leading: Icon(Icons.hourglass_top),
                title: Text('Rank'),
              ),
              const Divider(height: 2,color: Colors.blue,),
              const ListTile(
                leading: Icon(Icons.label_important_outline),
                title: Text('Points'),
              ),
              const Divider(height: 2,color: Colors.blue,),
            ],
          ),

        ),


      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('This is snackber')));
          },
          child: const Text('Tap',style: TextStyle(fontSize: 24),),
        ),
      ),

    );
  }
}

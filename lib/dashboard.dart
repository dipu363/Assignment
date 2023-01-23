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
              Card(

                child:  Container(
                  color: Colors.blue,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        CircleAvatar(
                          radius: 50,
                          child: Icon(
                            Icons.account_circle,
                            size: 100,
                          ),
                        ),
                        Text(
                          'Dipu',
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        Text(
                          '01933932636',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
             const SizedBox(height:5),
              _divider(),
              const ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              _divider(),
              const ListTile(
                leading: Icon(Icons.list),
                title: Text('My Task'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              _divider(),
              const ListTile(
                leading: Icon(Icons.hourglass_top),
                title: Text('Rank'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              _divider(),
              const ListTile(
                leading: Icon(Icons.label_important_outline),
                title: Text('Points'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              _divider()
            ],
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('This is snackber')));
            // showAboutDialog(context: context);
            showAlertdialog();
          },
          child: const Text(
            'Tap',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }

  Widget _divider() {
    return const Divider(height: 2, color: Colors.blue);
  }

  Future<void> showAlertdialog() async {
    AlertDialog alertDialog = AlertDialog(
      title: const Text('Massage'),
      content: const Text(
        'Are you sure \nClose the app?',
        style: TextStyle(fontSize: 18),
      ),
      elevation: 10,
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('No')),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Yes'))
      ],
    );

    showDialog(
      context: context,
      builder: (context) => alertDialog,
      barrierDismissible: false,
    );
  }
}

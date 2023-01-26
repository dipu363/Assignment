
import 'package:assainment/data/task.dart';

class MyCollection {

  List<Task> assinment(){
    List<Task> task = [];
    task.addAll({
      Task.ass(
           1,
          'Assignment',
          'Assignment ঃ একটি ফ্লাটার এপ তৈরি করুন, - App bar থাকবে - App bar এ ৩টি Action icon থাকবে - Action icon এ ক্লিক করলে Snackbar মেসেজ দিবে .................. প্রজেক্টের lib folder এবং pubspec.yaml ফাইল জিপ করে সাবমিট করবেন ',
          '28/01/2023 | 06:00 AM',
          'Approved'),
      Task.ass(
          2,
          'Assignment',
          'Assignment ঃ একটি ফ্লাটার এপ তৈরি করুন, - Navigation Drawer থাকবে - Body তে ১টা বাটন থাকবে - Button press করলে Alert Dialog আসবে .................. প্রজেক্টের lib folder এবং pubspec.yaml ফাইল জিপ করে সাবমিট করবেন ',
          '28/01/2023 | 06:00 AM',
          'Submitted'),
      Task.ass(
          3,
          'Assignment',
          'Assignment ঃ একটি ফ্লাটার এপ তৈরি করুন, - - Create A List View Using JSON Data - On tap list item new page show details প্রজেক্টের lib folder এবং pubspec.yaml ফাইল জিপ করে সাবমিট করবেন',
          '01/02/2023 | 06:00 AM',
          'pending'),
    }
    );
    return task;

  }


}
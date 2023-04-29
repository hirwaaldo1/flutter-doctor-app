import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
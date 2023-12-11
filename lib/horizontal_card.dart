import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final Gradient gradient;

  const MyCard(
      {super.key,
      required this.icon,
      required this.text,
      required this.gradient});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(icon, size: 20),
            const SizedBox(
              height: 12,
            ),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'icon': Icons.calendar_month_outlined,
      'text': 'Schedule Reminder',
      'gradient':
          LinearGradient(colors: [Colors.indigo.shade200, Colors.white54])
    },
    {
      'icon': Icons.add_box_outlined,
      'text': 'Add List',
      'gradient':
          LinearGradient(colors: [Colors.yellow.shade100, Colors.white54])
    },
    {
      'icon': Icons.edit_document,
      'text': 'Edit List',
      'gradient':
          LinearGradient(colors: [Colors.green.shade300, Colors.white54])
    },
    {
      'icon': Icons.list_outlined,
      'text': 'View List',
      'gradient':
          LinearGradient(colors: [Colors.orange.shade400, Colors.white54])
    },
    {
      'icon': Icons.notes_outlined,
      'text': 'List Details',
      'gradient':
          LinearGradient(colors: [Colors.green.shade300, Colors.white54])
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return MyCard(
          icon: items[index]['icon'],
          text: items[index]['text'],
          gradient: items[index]['gradient'],
        );
      },
    );
  }
}

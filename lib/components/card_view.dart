import 'package:flutter/material.dart';

class ComponentCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const ComponentCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,  // clean base
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 6,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        contentPadding: const EdgeInsets.all(20),
        leading: CircleAvatar(
          backgroundColor: Colors.deepPurple[100],
          child: Icon(icon, color: Colors.deepPurple[800], size: 26),
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          description,
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 15,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.deepPurple),
      ),
    );
  }
}

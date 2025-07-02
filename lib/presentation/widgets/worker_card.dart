import 'package:flutter/material.dart';

class WorkerCard extends StatelessWidget {
  final String workerName;
  final String workerImage;

  const WorkerCard({
    super.key,
    required this.workerName,
    required this.workerImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 50,
        width: 70,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(workerImage),
            onBackgroundImageError: (_, _) {
              Icon(Icons.person); // fallback icon
            },
          ),
          title: Text(workerName),
        ),
      ),
    );
  }
}

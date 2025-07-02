import 'package:flutter/material.dart';
import 'package:dabedan_v1/presentation/widgets/app_topbar.dart';
import 'package:dabedan_v1/presentation/widgets/worker_card.dart';

final workers = <Map<String, String>>[
  {'name': 'Julio Peret', 'image': 'assets/images/placeholder.png'},
  {'name': 'Anna López', 'image': 'assets/images/placeholder.png'},
  {'name': 'Mariela Chuva', 'image': 'assets/images/placeholder.png'},
  {'name': 'Dir. Comercial', 'image': 'assets/images/placeholder.png'},
];

class WorkerPage extends StatelessWidget {
  const WorkerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppTopbar(title: 'Worker Selector'),
          Expanded(
            child: ListView.builder(
              itemCount: workers.length,
              itemBuilder: (context, index) {
                final worker = workers[index];
                return WorkerCard(
                  workerName: worker['name']!,
                  workerImage: worker['image']!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:dabedan_v1/core/constants/app_colort.dart';
import 'package:dabedan_v1/presentation/pages/worker_selector/worker_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset('assets/dabedan_white.svg', height: 100),
            const SizedBox(height: 32),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>((
                  Set<WidgetState> states,
                ) {
                  if (states.contains(MaterialState.hovered)) {
                    return AppColors
                        .accent; // Use your secondary color for pressed state
                  }
                  return AppColors.secondary; // Default color
                }),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WorkerPage()),
                );
              },
              child: const Text(
                'New Entry',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

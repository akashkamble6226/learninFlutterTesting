import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.onPressed}) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Hello World!'),
        ElevatedButton(
            onPressed: () => onPressed.call(),
            style: ElevatedButton.styleFrom(primary: Colors.blue),
            child: Row(
              children: const [
                Icon(
                  Icons.wb_sunny,
                  key: Key('icon_weather'),
                ),
                Text('Weather Today'),
              ],
            ))
      ],
    );
  }
}

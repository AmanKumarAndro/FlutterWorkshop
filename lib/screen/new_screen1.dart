import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/screen/Home_screen.dart';
import 'package:get/get.dart';

class NewScreen extends StatelessWidget {
  NewScreen({super.key});
  final TextEditingController _cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(children: [
          TextField(
            controller: _cityController,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => const HomeScreen(),
              // ));
              Get.to(() => HomeScreen(
                    cityName: _cityController.text,
                  ));
            },
            child: const Text('check The Weather'),
          )
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:torch_light/torch_light.dart';

class FlashLightView extends StatefulWidget {
  const FlashLightView({super.key});

  @override
  State<FlashLightView> createState() => _FlashLightViewState();
}

class _FlashLightViewState extends State<FlashLightView> {
  bool isLightOn = false; //For light turn ON/OFF

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flashlight in flutter'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              isLightOn = !isLightOn;
              setState(() {
                if (isLightOn) {
                  TorchLight.enableTorch(); // Enable Flashlight
                } else {
                  TorchLight.disableTorch(); // Disable Flashlight
                }
              });
            },
            child: const Text('ON/OFF Flashlight')),
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_number_generator/component/number_row.dart';
import 'package:random_number_generator/constant/color.dart';
import 'package:random_number_generator/screen/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int maxNumber = 1000;
  List<int> randomNumbers = [
    123,
    456,
    789,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Header(
                onPressed: onSettingsPop,
              ),
              _Body(randomNumbers: randomNumbers),
              _Footer(onPressed: onRandomNumberGenerate),
            ],
          ),
        ),
      ),
    );
  }

  void onSettingsPop() async {
    final int? result = await Navigator.of(context).push<int>(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return SettingsScreen(
            maxNumber: maxNumber,
          );
        },
      ),
    );
    if (result != null) {
      setState(() {
        maxNumber = result;
      });
    }
  }

  void onRandomNumberGenerate() {
    final rand = Random();
    final Set<int> newNumbers = {};

    while (newNumbers.length != 3) {
      final number = rand.nextInt(maxNumber);
      newNumbers.add(number);
    }
    setState(() {
      randomNumbers = newNumbers.toList();
    });
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.randomNumbers,
    Key? key,
  }) : super(key: key);

  final List<int> randomNumbers;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: randomNumbers
            .asMap()
            .entries
            .map(
              (x) => Padding(
                padding: EdgeInsets.only(bottom: x.key == 2 ? 0 : 16.0),
                child: NumberRow(
                  number: x.value,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final VoidCallback onPressed;

  const _Header({required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Random Number Generator',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        IconButton(
          onPressed: onPressed,
          icon: const Icon(
            color: RED_COLOR,
            Icons.settings,
          ),
        )
      ],
    );
  }
}

class _Footer extends StatelessWidget {
  final VoidCallback onPressed;
  const _Footer({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: RED_COLOR,
        ),
        onPressed: onPressed,
        child: const Text(
          'Generate',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

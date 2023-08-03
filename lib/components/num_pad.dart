import 'package:flutter/material.dart';
import 'package:numpad/numpad.dart';

class MyNumpad extends StatefulWidget {
  const MyNumpad({super.key});

  @override
  State<MyNumpad> createState() => _MyNumpadState();
}

class _MyNumpadState extends State<MyNumpad> {
  String code = "";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 420,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "₹$code",
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 40,
            ),
          ),
          NumPad(
            textStyle: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 40),
            backgroundColor: Colors.transparent,
            numItemDecoration: const BoxDecoration(),
            onTap: (val) {
              if (val == 99) {
                if (code.isNotEmpty) {
                  setState(() {
                    code = code.substring(0, code.length - 1);
                  });
                }
              } else {
                setState(() {
                  code += "$val";
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
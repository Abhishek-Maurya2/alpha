import 'package:flutter/material.dart';

class ProfileBox extends StatelessWidget {
  const ProfileBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color:
              Theme.of(context).colorScheme.secondaryContainer.withOpacity(0.3),
        ),
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close),
            ),
            Container(
              height: 100,
              width: 280,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.3),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Icon(Icons.privacy_tip),
                SizedBox(
                  width: 20,
                ),
                Text("Your data in App"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Icon(Icons.privacy_tip),
                SizedBox(
                  width: 20,
                ),
                Text("Your data in App"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Icon(Icons.privacy_tip),
                SizedBox(
                  width: 20,
                ),
                Text("Your data in App"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text("Privacy Policy . Services"),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
